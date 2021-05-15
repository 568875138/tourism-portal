package xyz.duxin.city.bean;

import java.math.BigInteger;
import java.sql.Timestamp;

public class title {
	private BigInteger id;
	private Integer classify;
	private String title;
	private String titleimg;
	private String adescribe;
	private String tags;
	private Timestamp datime;
	private BigInteger readc;
	private String author;
	private String content;
	
	public void setid(BigInteger id) {this.id = id;}
	public void setclassify(Integer classify) {this.classify = classify;}
	public void settitle(String title) {this.title = title;}
	public void settitleimg(String titleimg) {this.titleimg = titleimg;}
	public void setadescribe(String adescribe) {this.adescribe = adescribe;}
	public void settags(String tags) {this.tags = tags;}
	public void setdatime(Timestamp datime) {this.datime = datime;}
	public void setreadc(BigInteger readc) {this.readc = readc;}
	public void setauthor(String author) {this.author = author;}
	public void setcontent(String content) {this.content = content;}
	
	public BigInteger getid() {return this.id;}
	public Integer getclassify() {return this.classify;}
	public String gettitle() {return this.title;}
	public String gettitleimg() {return this.titleimg;}
	public String getadescribe() {return this.adescribe;}
	public String gettags() {return this.tags;}
	public Timestamp getdatime() {return this.datime;}
	public BigInteger getreadc() {return this.readc;}
	public String getauthor() {return this.author;}
	public String getcontent() {return this.content;}
}
