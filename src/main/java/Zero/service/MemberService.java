package Zero.service;

import org.apache.ibatis.session.SqlSession;
import Zero.model.dao.MemberDAO;
import Zero.model.vo.Member;
import common.SqlSessionTemplate;

public class MemberService {

	private MemberDAO zDao;
	
	public MemberService() {
		zDao = new MemberDAO();
	}
	
	public int insertMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = zDao.insertMember(session, member);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int deleteMember(String memberId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = zDao.deletetMember(session, memberId);
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}

	public int updateMember(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		int result = zDao.updateMember(session, member);
		if(result > 0){
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		return result;
	}
	
	public Member selectCheckLogin(Member member) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member zOne = zDao.selectCheckLogin(session, member);
		session.close();
		return zOne;
	}
	
	public Member selectOneById(String memberId) {
		SqlSession session = SqlSessionTemplate.getSqlSession();
		Member member = zDao.selectOneById(session, memberId);
		session.close();
		return member;
	}
}
