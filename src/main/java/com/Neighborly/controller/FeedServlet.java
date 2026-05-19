package com.Neighborly.controller;

import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.FeedDAO;
import com.Neighborly.model.FeedModel;
import com.Neighborly.model.UserModel;
import com.Neighborly.service.FeedService;
import com.Neighborly.utils.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/feed")
public class FeedServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        UserModel loggedUser =
                (UserModel) SessionUtil.getAttribute(request, "user");
        int userId = loggedUser.getUserId();

        try {

            FeedDAO dao = new FeedDAO();

            List<FeedModel> posts = dao.getAllPosts();

            for (FeedModel post : posts) {
                post.setUserVote(dao.getUserVote(post.getPostId(), userId));
                int[] counts = dao.getVoteCounts(post.getPostId());
                post.setUpCount(counts[0]);
                post.setDownCount(counts[1]);
                post.setSavedByUser(dao.isSaved(post.getPostId(), userId));
            }

            request.setAttribute("posts", posts);
            request.setAttribute("user", loggedUser);   // ← fixes ${user.userName} in JSP
            request.setAttribute("activePage", "Feed");

            request.getRequestDispatcher("/WEB-INF/Pages/feed.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Database error loading feed", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        UserModel loggedUser =
                (UserModel) SessionUtil.getAttribute(request, "user");
        int userId = loggedUser.getUserId();

        String action = request.getParameter("action");

        FeedDAO dao     = new FeedDAO();
        FeedService svc = new FeedService();

        try {

            // CREATE POST

            if ("createPost".equals(action)) {

                String content  = request.getParameter("content");
                String postType = request.getParameter("postType");

                String validation = svc.validatePost(content, postType);

                if (!"Success".equals(validation)) {
                    request.setAttribute("error", validation);
                    doGet(request, response);   // reload with error
                    return;
                }

                dao.createPost(userId, content, postType);
            }

            // VOTE 
            
             else if ("vote".equals(action)) {

                String postIdStr = request.getParameter("postId");
                String voteType  = request.getParameter("voteType"); // "up" or "down"

                String validation = svc.validateVote(postIdStr, voteType);

                if (!"Success".equals(validation)) {
                    response.sendRedirect(
                            request.getContextPath() + "/feed");
                    return;
                }

                int postId = Integer.parseInt(postIdStr);

                String existing = dao.getUserVote(postId, userId);

                if (voteType.equals(existing)) {
                    dao.unvote(postId, userId);
                } else {
                    // New vote or switching direction
                    dao.vote(postId, userId, voteType);
                }
            }

            // SAVE 

            else if ("save".equals(action)) {

                int postId =
                        Integer.parseInt(
                                request.getParameter("postId"));

                dao.toggleSave(postId, userId);
            }

            response.sendRedirect(
                    request.getContextPath() + "/feed");

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Database error on feed action", e);
        }
    }
}