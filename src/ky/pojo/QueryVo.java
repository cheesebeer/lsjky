package ky.pojo;

public class QueryVo {
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getUndergraduateLevel() {
		return undergraduateLevel;
	}
	public void setUndergraduateLevel(String undergraduateLevel) {
		this.undergraduateLevel = undergraduateLevel;
	}
	public String getGpa() {
		return gpa;
	}
	public void setGpa(String gpa) {
		this.gpa = gpa;
	}
	public String getEnglishLevel() {
		return englishLevel;
	}
	public void setEnglishLevel(String englishLevel) {
		this.englishLevel = englishLevel;
	}
	public String getCrossMajor() {
		return crossMajor;
	}
	public void setCrossMajor(String crossMajor) {
		this.crossMajor = crossMajor;
	}
	public String getNumberOfExam() {
		return numberOfExam;
	}
	public void setNumberOfExam(String numberOfExam) {
		this.numberOfExam = numberOfExam;
	}
	public String getPrizeAndProject() {
		return prizeAndProject;
	}
	public void setPrizeAndProject(String prizeAndProject) {
		this.prizeAndProject = prizeAndProject;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	private String major;
	private String undergraduateLevel;
	private String gpa;
	private String englishLevel;
	private String crossMajor;
	private String numberOfExam;
	private String prizeAndProject;
	// 当前页码数
	private Integer page = 1;
	// 数据库从哪一条数据开始查
	private Integer start;
	// 每页显示数据条数
	private Integer rows = 10;
		

}
