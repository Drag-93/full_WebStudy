package org.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.web.dto.BoardDto;
import org.web.service.BoardService;
import org.web.service.impl.BoardServiceImpl;


@WebServlet("*.board")
public class BoardController extends HttpServlet{
	
	@Override
	public void init() throws ServletException{
		System.out.println("서블릿 생성 -> init()");
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get");
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post");
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String path=request.getContextPath();
		String uri=request.getRequestURI();
		
		String basicURL=uri.substring(path.length()); // ->/insert.member
		System.out.println(basicURL);
		
		
		BoardService service=new BoardServiceImpl();
		
		String url="";
		
		if(basicURL.equals("/boardList.board")) {
			System.out.println("게시글조회(목록)");
			List<BoardDto> boardList = service.boardList();
			request.setAttribute("boardList", boardList);
			
			url="/board/boardList.jsp";
		}else if(basicURL.equals("/boardWriteView.board")) {
			//페이지만 이동
			url="/board/boardWrite.jsp";
		}else if(basicURL.equals("/boardWrite.board")) {
			System.out.println("게시글 작성");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Long memberId = Long.parseLong(request.getParameter("memberId"));
	
			int rs= service.boardSave(new BoardDto(null, title, content, memberId, null, null));
			request.setAttribute("boardWrite", rs);
			if(rs==1) {
				System.out.println("게시글 목록 페이지로 이동");
//				url="/boardList.board";
				//jsp로 이동하는게 아니라 -> Controller 내로 이동
				response.sendRedirect(request.getContextPath()+"/boardList.board");
				return;
			}
			
		}else if(basicURL.equals("/boardDetail.board")) {
			System.out.println("게시글 상세 조회");
			Long boardId= Long.parseLong(request.getParameter("boardId"));
			BoardDto boardDto = service.boardDetail(boardId);
			System.out.println(boardId);
			url="/board/boardDetail.jsp";
			request.setAttribute("boardDto", boardDto);
			
		}else if(basicURL.equals("/boardDelete.board")) {
			
		}
		else {
			System.out.println("Fail");
		}
		//View -> JSP,Thymeleaf -> 템플릿엔진 HTML+Data -> 컴파일 -> HTML
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	@Override
	public void destroy() {
		System.out.println("서블릿 종료 -> destroy()");
		}
	
	

	
}
