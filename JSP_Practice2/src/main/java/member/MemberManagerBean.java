package member;

import java.util.ArrayList;

public class MemberManagerBean { // MemberDAO

	ArrayList<MemberBean> datas = new ArrayList<MemberBean>();
	MemberBean mb = new MemberBean();
	
	public boolean insert(MemberBean mb){
		try {
			datas.add(mb);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	
	public ArrayList<MemberBean> selectAll(MemberBean mb){
		
		return datas;
	}
	
	public MemberBean selectOne(MemberBean mb){
		for(MemberBean v:datas) {
			if(mb.getMname().equals(v.getMname())) {
				return v;
			}
		}
		return null;
	}



}
