package xyz.duxin.city.action;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import xyz.duxin.city.bean.title;
import xyz.duxin.city.dao.titleDAO;

public class AdminAction extends ActionSupport {
	private titleDAO TitleDAO;
	private List<title> TitleDAOs;
	private List<title> TitleDAOs2;
	private Long TitleCount;
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

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

	public Long gettitleCount() {
		return TitleCount;
	}

	public void settitleCount(Long TitleCount) {
		this.TitleCount = TitleCount;
	}

	public List<title> gettitleDAOs2() {
		return TitleDAOs2;
	}

	public void settitleDAOs2(List<title> TitleDAOs2) {
		this.TitleDAOs2 = TitleDAOs2;
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("admin")) {
					if (cookie.getValue().equals("admin")) {
						TitleDAOs = TitleDAO.getLast(10);
						TitleDAOs2 = TitleDAO.getLast(50);
						TitleCount = TitleDAO.getCount();
						ActionContext.getContext().put("TitleDAOs", TitleDAOs);
						ActionContext.getContext().put("TitleDAOs2", TitleDAOs2);
						ActionContext.getContext().put("TitleCount", TitleCount);
						return SUCCESS;
					}
				}
			}
		}
		return "ERROR";
	}

	public String delete() throws Exception {
		TitleDAO.deleteTitle(id);
		return SUCCESS;

	}

}
