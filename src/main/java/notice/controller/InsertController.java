package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class InsertController
 */
@WebServlet("/notice/insert.do")
public class InsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views//notice/insert.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 공지사항 등록
		// form태그 > input태그 > name 속성이 가지는 값 : noticeSubject
		request.setCharacterEncoding("UTF-8");
		String noticeSubject = request.getParameter("noticeSubject");
		String noticeContent = request.getParameter("noticeContent");
		// 2개의 값으로 필드 초기화 하면서 객체 생성 : 매개변수 생성자 이용!
		Notice notice = new Notice(noticeSubject, noticeContent);
		NoticeService service = new NoticeService();
		// INSERT INTO NOTICE_TBL VALUES(SEQ_NOTICENO.NEXTVAL, ~~~)
		// insertNotice() 메소드
		int result = service.insertNotice(notice);
		if(result > 0) {
			// 성공하면 공지사항 목록으로 이동
			// without data 페이지 이동으로
			response.sendRedirect("/notice/list.do");
			
		}else {
			// 실패하면 실패 메세지, 이전페이지 이동 클릭시 작성 페이지로 이동
			request.setAttribute("msg", "공지사항 등록에 실패하였습니다.");
			request.setAttribute("url", "/notice/insert.do");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
			
		}
	}

}
