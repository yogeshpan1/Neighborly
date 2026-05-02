package com.Neighborly.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

import com.Neighborly.utils.SessionUtil;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */

@WebFilter(urlPatterns = {"/home","/feed","/news","/profile","/logout"})
public class AuthenticationFilter extends HttpFilter implements Filter {
       
    private static final long serialVersionUID = 1L;

    public AuthenticationFilter() {
        super();
    }

	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		boolean isLoggedIn = SessionUtil.getAttribute(httpRequest, "user") != null;

		if (isLoggedIn) {
			chain.doFilter(request, response);
		} else {

			httpResponse.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}