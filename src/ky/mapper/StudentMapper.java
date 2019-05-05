package ky.mapper;

import java.util.List;

import ky.pojo.Student;

import ky.pojo.QueryVo;

/**
 * @author lih's laptop
 *客户信息持久化接口
 */
public interface StudentMapper {
	//根据查询条件分页查询用户列表
List<Student> getStudentByQueryVo(QueryVo vo);
//根据查询条件查询总记录数
int getCountByQueryVo(QueryVo vo);
}
