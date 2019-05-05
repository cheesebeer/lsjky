package ky.pojo;

import java.util.Date;

/**
 * @author lih's laptop
 *学生信息数据模型
student.`no`,
student.`timeStamp`,
student.timeUsed,
student.source,
student.sourceSpe,
student.ip,
student.`name`,
student.major,
student.grade,
student.undergraduateLevel,
student.undergraduateSchool,
student.gpa,
student.englishLevel,
student.crossMajor,
student.numberOfExam,
student.prizeAndProject,
student.suggestion


student.`no`,
student.`timeStamp`,
student.timeUsed,
student.source,
student.sourceSpe,
student.ip,
student.`name`,
student.major,
student.grade,
student.undergraduateLevel,
student.undergraduateSchool,
student.gpa,
student.englishLevel,
student.crossMajor,
student.numberOfExam,
student.prizeAndProject,
student.suggestion
*/
public class Student {
	private int no;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getTimeUsed() {
		return timeUsed;
	}
	public void setTimeUsed(String timeUsed) {
		this.timeUsed = timeUsed;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getSourceSpe() {
		return sourceSpe;
	}
	public void setSourceSpe(String sourceSpe) {
		this.sourceSpe = sourceSpe;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getUndergraduateSchool() {
		return undergraduateSchool;
	}
	public void setUndergraduateSchool(String undergraduateSchool) {
		this.undergraduateSchool = undergraduateSchool;
	}
	public String getSuggestion() {
		return suggestion;
	}
	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}
	private String timeStamp;
	private String timeUsed;
	private String source;
	private String sourceSpe;
	private String ip;
	private String grade;
	private String undergraduateSchool;
	private String suggestion;

	private String name;
	private String major;
	private String undergraduateLevel;
	private String gpa;
	private String englishLevel;
	private String crossMajor;
	private String numberOfExam;
	private String prizeAndProject;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

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
	
}
