package com.green.evalBbs.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.evalBbs.dto.EvalBbsDto;

@Mapper
public interface IEvalBbsDao {
	
	public List<EvalBbsDto> getList();
	
	public void write(String title, String content, String writer, String regdate);
	
	
	
	
}
