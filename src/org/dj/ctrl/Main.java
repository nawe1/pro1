package org.dj.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dj.dto.Notice;
import org.dj.dto.Qna;

@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String author = "박범수";
		ServletContext application = request.getServletContext();
		String realPath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realPath", realPath);
		application.setAttribute("title", "대전 중구 소개");
		List<Notice> latestNotiList = new ArrayList<>();
		List<Qna> latestQnaList = new ArrayList<>();
		
//		request.setAttribute("latestNotiList", latestNotiList);
//		request.setAttribute("latestQnaList", latestQnaList);
		request.setAttribute("author", author);
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}
}