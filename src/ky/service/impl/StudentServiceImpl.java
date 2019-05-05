package ky.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ky.mapper.StudentMapper;
import ky.pojo.Student;
import ky.pojo.QueryVo;
import ky.service.StudentService;
import ky.utils.Page;
@Service
public class StudentServiceImpl implements StudentService{
@Autowired
	private StudentMapper customerMapper;

@Override
	public Page<Student> getStudentByQueryVo(QueryVo vo) {
		vo.setStart((vo.getPage()-1)*vo.getRows());
		
		//查询总记录数
		int total = this.customerMapper.getCountByQueryVo(vo);
		//查询每页的数据列表
		List<Student> list = customerMapper.getStudentByQueryVo(vo);
		//包装分页数据
		Page<Student>page = new Page<Student>(total,vo.getPage(),vo.getRows(),list);
		return page;
	}

}
