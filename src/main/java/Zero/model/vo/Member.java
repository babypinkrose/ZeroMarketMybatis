package Zero.model.vo;

import java.sql.Timestamp;

public class Member {
	private String memberId;
	private String memberNickname;
	private String memberPw;
	private String memberPhone;
	private Timestamp memberDate;
	private Timestamp updateDate;

	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	public Member(String memberId, String memberPw) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
	}

	public Member(String memberId, String memberNickname, String memberPw, String memberPhone) {
		super();
		this.memberId = memberId;
		this.memberNickname = memberNickname;
		this.memberPw = memberPw;
		this.memberPhone = memberPhone;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public Timestamp getMemberDate() {
		return memberDate;
	}

	public void setMemberDate(Timestamp memberDate) {
		this.memberDate = memberDate;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "회원정보 [아이디=" + memberId + ", 닉네임=" + memberNickname + ", 비밀번호=" + memberPw
				+ ", 휴대폰번호=" + memberPhone + ", 가입일=" + memberDate + ", 수정일=" + updateDate + "]";
	}
	
}
