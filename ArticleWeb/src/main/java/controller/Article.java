package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.articles.IndexDTO;
import model.ArticleDAO;

@WebServlet("/article")
public class Article extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
		req.setCharacterEncoding("utf-8");
		String btn = req.getParameter("btn");
		ArticleDAO adao = new ArticleDAO();
		IndexDTO idto = new IndexDTO();
		//記事の一覧を取得する
		String msg = "記事一覧を表示します。";
		idto = adao.select();
		
		
		req.setAttribute("idto", idto);
		req.setAttribute("msg", msg);
		RequestDispatcher rd = req.getRequestDispatcher("/articles/index.jsp");
		rd.forward(req, res);
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
		doGet(req, res);
	}
}