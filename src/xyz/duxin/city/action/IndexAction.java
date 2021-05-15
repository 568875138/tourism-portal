package xyz.duxin.city.action;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import xyz.duxin.city.bean.title;
import xyz.duxin.city.dao.titleDAO;

public class IndexAction extends ActionSupport{
	private titleDAO TitleDAO;
	private List<title> TitleDAOs;
	private List<title> TitleDAOs2;
	private List<title> TitleDAOs3;
	
	public titleDAO gettitleDAO() {
		return TitleDAO;
	}
	
	public void settitleDAO(titleDAO TitleDAO) {
		this.TitleDAO = TitleDAO;
	}
	
	public List<title> gettitleDAOs() {
		return TitleDAOs;
	}
	
	public void settitleDAOs(List<title> TitleDAOs) {
		this.TitleDAOs = TitleDAOs;
	}
	
	public List<title> gettitleDAOs2() {
		return TitleDAOs2;
	}
	
	public void settitleDAOs2(List<title> TitleDAOs2) {
		this.TitleDAOs2 = TitleDAOs2;
	}
	
	public List<title> gettitleDAOs3() {
		return TitleDAOs3;
	}
	
	public void settitleDAOs3(List<title> TitleDAOs3) {
		this.TitleDAOs3 = TitleDAOs3;
	}
	
	@Override
	public String execute() throws Exception {
		TitleDAOs = TitleDAO.getClassify(3,6);
		TitleDAOs2 = TitleDAO.getClassify(5,4);
		TitleDAOs3 = TitleDAO.getClassify(2,4);
		ActionContext.getContext().put("TitleDAOs", TitleDAOs);
		ActionContext.getContext().put("TitleDAOs2", TitleDAOs2);
		ActionContext.getContext().put("TitleDAOs3", TitleDAOs3);
		return SUCCESS;
	}
	
}
