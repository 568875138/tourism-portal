package xyz.duxin.city.action;

import java.math.BigInteger;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import xyz.duxin.city.bean.title;
import xyz.duxin.city.dao.titleDAO;

public class PageAction extends ActionSupport{
	private titleDAO TitleDAO;
	private title pages;
	private String id;
	
	public titleDAO gettitleDAO() {
		return TitleDAO;
	}
	
	public void settitleDAO(titleDAO TitleDAO) {
		this.TitleDAO = TitleDAO;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public String execute() throws Exception {
		pages = TitleDAO.getInfo();
		ActionContext.getContext().put("title", pages.gettitle());
		ActionContext.getContext().put("classifyurl", "./info");
		ActionContext.getContext().put("classifyname", "城市简介");
		ActionContext.getContext().put("pageid",pages.getid());
		ActionContext.getContext().put("tags",pages.gettags());
		ActionContext.getContext().put("readc",pages.getreadc());
		ActionContext.getContext().put("adescribe",pages.getadescribe());
		ActionContext.getContext().put("content",pages.getcontent());
		return SUCCESS;
	}

	public String read() throws Exception {
		try{
			pages = TitleDAO.getById(new BigInteger(id));
			ActionContext.getContext().put("title", pages.gettitle());
		}catch(Exception e){
			pages = TitleDAO.getById(new BigInteger("1"));
			ActionContext.getContext().put("title", pages.gettitle());
		}
		
		switch(pages.getclassify()){
		    case 1 :
				ActionContext.getContext().put("classifyurl", "./info");
				ActionContext.getContext().put("classifyname", "城市简介");
		       break;
		    case 2 :
				ActionContext.getContext().put("classifyurl", "./list?classify=2");
				ActionContext.getContext().put("classifyname", "最新资讯");
		       break;
		    case 3 :
				ActionContext.getContext().put("classifyurl", "./list?classify=3");
				ActionContext.getContext().put("classifyname", "城市景点");
		       break;
		    case 4 :
				ActionContext.getContext().put("classifyurl", "./list?classify=4");
				ActionContext.getContext().put("classifyname", "历史名人");
		       break;
		    case 5 :
				ActionContext.getContext().put("classifyurl", "./list?classify=5");
				ActionContext.getContext().put("classifyname", "城市美食");
		       break;
		    case 6 :
				ActionContext.getContext().put("classifyurl", "./list?classify=6");
				ActionContext.getContext().put("classifyname", "城市微拍");
		       break;
		    default :
				ActionContext.getContext().put("classifyurl", "./");
				ActionContext.getContext().put("classifyname", "未知分类");
		}
		
		ActionContext.getContext().put("pageid",pages.getid());
		ActionContext.getContext().put("tags",pages.gettags());
		ActionContext.getContext().put("readc",pages.getreadc());
		ActionContext.getContext().put("adescribe",pages.getadescribe());
		ActionContext.getContext().put("content",pages.getcontent());
		return SUCCESS;
	}
}
