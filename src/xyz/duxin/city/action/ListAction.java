package xyz.duxin.city.action;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import xyz.duxin.city.bean.title;
import xyz.duxin.city.dao.titleDAO;

public class ListAction extends ActionSupport{
	private int page = 1;
	private int classify = 1;
	private titleDAO TitleDAO;
	private List<title> TitleDAOs;
	private String returnvalue = SUCCESS;
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	
	public int getClassify() {
		return classify;
	}
	
	public void setClassify(int classify) {
		this.classify = classify;
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
	
	@Override
	public String execute() throws Exception {
		switch(classify) {
		    case 1 :
				ActionContext.getContext().put("classifyurl", "./info");
				ActionContext.getContext().put("classifyname", "城市简介");
		       break;
		    case 2 :
				ActionContext.getContext().put("classifyurl", "./list?classify=2");
				ActionContext.getContext().put("classifyname", "最新资讯");
		       break;
		    case 3 :
		    	returnvalue = "img";
				ActionContext.getContext().put("classifyurl", "./list?classify=3");
				ActionContext.getContext().put("classifyname", "城市景点");
		       break;
		    case 4 :
		    	returnvalue = "img";
				ActionContext.getContext().put("classifyurl", "./list?classify=4");
				ActionContext.getContext().put("classifyname", "历史名人");
		       break;
		    case 5 :
		    	returnvalue = "img";
				ActionContext.getContext().put("classifyurl", "./list?classify=5");
				ActionContext.getContext().put("classifyname", "城市美食");
		       break;
		    case 6 :
		    	returnvalue = "img";
				ActionContext.getContext().put("classifyurl", "./list?classify=6");
				ActionContext.getContext().put("classifyname", "城市微拍");
		       break;
		    default :
		    	returnvalue = "img";
				ActionContext.getContext().put("classifyurl", "./");
				ActionContext.getContext().put("classifyname", "未知分类");
		}
		TitleDAOs = TitleDAO.getPage(page,classify);
		ActionContext.getContext().put("TitleDAOs", TitleDAOs);
		return returnvalue;
	}
	
}
