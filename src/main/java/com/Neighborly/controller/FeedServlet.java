package com.Neighborly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.Neighborly.dao.FeedDAO;
import com.Neighborly.model.FeedModel;
import com.Neighborly.model.UserModel;
import com.Neighborly.service.FeedService;
import com.Neighborly.utils.FileUploadUtil;
import com.Neighborly.utils.SessionUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/feed")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 2,
    maxFileSize       = 1024 * 1024 * 10,
    maxRequestSize    = 1024 * 1024 * 50
)
public class FeedServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final String UPLOAD_DIR =
            System.getProperty("user.home") + File.separator + "webapp_uploads";

    // =========================================================
    // LOAD FEED
    // =========================================================

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
            request.setAttribute("user", loggedUser);
            request.setAttribute("activePage", "Feed");

            request.getRequestDispatcher("/WEB-INF/Pages/feed.jsp")
                   .forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Database error loading feed", e);
        }
    }

    // =========================================================
    // HANDLE ACTIONS
    // =========================================================

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

            // =========================================
            // CREATE POST
            // =========================================

            if ("createPost".equals(action)) {

                String content  = request.getParameter("content");
                String postType = request.getParameter("postType");

                String validation = svc.validatePost(content, postType);

                if (!"Success".equals(validation)) {
                    request.setAttribute("error", validation);
                    doGet(request, response);
                    return;
                }

                // Handle optional image upload
                String imageFile = null;
                Part filePart = request.getPart("postImage");

                if (filePart != null && filePart.getSize() > 0) {
                    if (FileUploadUtil.isImage(filePart)) {
                        String ext = FileUploadUtil.getFileExtension(
                                filePart.getSubmittedFileName());
                        // Name: post_<userId>_<timestamp>.<ext>
                        imageFile = "post_" + userId + "_"
                                + System.currentTimeMillis() + ext;
                        FileUploadUtil.saveFile(filePart, UPLOAD_DIR, imageFile);
                    } else {
                        request.setAttribute("error", "Invalid image type.");
                        doGet(request, response);
                        return;
                    }
                }

                dao.createPost(userId, content, postType, imageFile);
            }

            // =========================================
            // VOTE
            // =========================================

            else if ("vote".equals(action)) {

                String postIdStr = request.getParameter("postId");
                String voteType  = request.getParameter("voteType");

                String validation = svc.validateVote(postIdStr, voteType);

                if (!"Success".equals(validation)) {
                    response.sendRedirect(request.getContextPath() + "/feed");
                    return;
                }

                int postId = Integer.parseInt(postIdStr);
                String existing = dao.getUserVote(postId, userId);

                if (voteType.equals(existing)) {
                    dao.unvote(postId, userId);
                } else {
                    dao.vote(postId, userId, voteType);
                }
            }

            // =========================================
            // SAVE
            // =========================================

            else if ("save".equals(action)) {

                int postId = Integer.parseInt(
                        request.getParameter("postId"));
                dao.toggleSave(postId, userId);
            }

            response.sendRedirect(request.getContextPath() + "/feed");

        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Database error on feed action", e);
        }
    }
    
    
    
}