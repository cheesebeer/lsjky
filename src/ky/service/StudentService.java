package ky.service;

import java.util.List;

import ky.pojo.Student;
import ky.pojo.QueryVo;
import ky.utils.Page;

/**
 * @author lih's laptop
 *客户信息业务逻辑接口
 */
public interface StudentService {
	//根据查询条件分页查询用户列表
Page<Student> getStudentByQueryVo(QueryVo vo);
}
