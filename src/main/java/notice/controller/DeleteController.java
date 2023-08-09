package notice.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;

/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/notice/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DELETE FROM NOTICE_TBL WHERE NOTICE_NO = ?
		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		NoticeService service = new NoticeService();
		// DELETE니까 리턴타입은 int!
		int result = service.deleteNotice(noticeNo);
		if(result > 0) {
			// 성공시 목록으로 이동
			response.sendRedirect("/notice/list.do");
		}else {
			// 실패시 실패 메세지 및 상세페이지로 이동
			request.setAttribute("msg", "공지사항 삭제가 완료되지 않았습니다");
			request.setAttribute("url", "/notice/detail.do?noticeNo"+noticeNo);
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
