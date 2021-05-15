package xyz.duxin.city.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import xyz.duxin.city.bean.title;
import xyz.duxin.city.dao.titleDAO;

public class AddPagesAction extends ActionSupport {
	private File myfile;
	private String myfileFileName;
	private String myfileContentType;
	private String savePath;
	private titleDAO TitleDAO;
	private title titles;
	private String title;
	private String adescribe;
	private Integer classify;
	private String content;
	private String tags;

	public void setTitle(String title) {this.title = title;};
	public void setClassify(Integer classify) {this.classify = classify;};
	public void setAdescribe(String adescribe) {this.adescribe = adescribe;};
	public void setContent(String content) {this.content = content;};
	public void setTags(String tags) {this.tags = tags;};
	
	public File getMyfile() {
		return myfile;
	}

	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}

	public String getMyfileFileName() {
		return myfileFileName;
	}

	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}

	public String getMyfileContentType() {
		return myfileContentType;
	}

	public void setMyfileContentType(String myfileContentType) {
		this.myfileContentType = myfileContentType;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	
	public titleDAO gettitleDAO() {
		if(TitleDAO == null)
			TitleDAO = new titleDAO();
		return TitleDAO;
	}

	public void settitleDAO(titleDAO TitleDAO) {
		this.TitleDAO = TitleDAO;
	}

	public title getTitles() {
		return titles;
	}

	public void setTitles(title titles) {
		this.titles = titles;
	}
	
	private void upload() throws IOException {
		int pos = 0;
		if (myfileFileName.contains(File.separator)) {
			pos = myfileFileName.lastIndexOf(File.separator);
			myfileFileName = myfileFileName.substring(pos);
		}
		
		String[] ext = myfileFileName.split("\\.");
		System.out.println(ext);
		myfileFileName = DigestUtils.sha1Hex(myfileFileName).toString() + '.' + ext[ext.length-1];
		
		String basePath = ServletActionContext.getServletContext().getRealPath(File.separator);

		HttpServletRequest request = ServletActionContext.getRequest();
		BufferedInputStream is = new BufferedInputStream(new FileInputStream(myfile));
		BufferedOutputStream os = new BufferedOutputStream(new FileOutputStream(basePath + "\\upload\\" + myfileFileName));
        byte[] buffer = new byte[1024];
        int byteLen = 0;
        while ((byteLen = is.read(buffer)) > 0) {
            os.write(buffer, 0, byteLen);
        }
        is.close();
        os.close();
		titles.settitleimg("./upload/" + myfileFileName);
	}

	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies = request.getCookies();
		savePath = request.getContextPath();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("admin")) {
					if (cookie.getValue().equals("admin")) {
						if (myfile != null)
							upload();
						Timestamp savertime = new Timestamp(System.currentTimeMillis());
						titles.settitle(title);
						titles.setadescribe(adescribe);
						titles.setclassify(classify);
						titles.setcontent(content);
						titles.settags(tags);
						titles.setdatime(savertime);
						titles.setreadc(new BigInteger("0"));
						titles.setauthor("Admin");
						TitleDAO.addTitle(titles);
						return SUCCESS;
					}
				}
			}
		}
		return "ERROR";
	}

}
