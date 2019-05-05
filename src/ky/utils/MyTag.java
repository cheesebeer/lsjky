package ky.utils;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * @author lih's laptop
 *自定义标签入门
 */
public class MyTag extends TagSupport{
@Override
public int doStartTag() throws JspException {
	JspWriter out = super.pageContext.getOut();
	try {
		out.print("<span>这个是自定义标签输出的内容<span>");
		out.print("<H1>这个是自定义标签输出的内容<H1>");

	} catch (IOException e) {
		
		e.printStackTrace();
	}
	return super.doStartTag();
}
}
