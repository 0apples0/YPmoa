package com.moa.controller;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.moa.youthpolicy.user.domain.UserVO;
import com.moa.youthpolicy.user.mapper.UserMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class DbTest {
	
	@Autowired
    private UserMapper userMapper;
    @Autowired
    private DataSource dataSource;

    @Test
    public void dataSourceTest() {
        try {
            log.info(dataSource.getConnection());
        } catch (Exception e) {
            log.error("데이터베이스 연결 실패: " + e.getMessage());
        }
    }
    
    @Test
    public void getTest() {
    	UserVO vo = userMapper.selectUserByEmail("test");
    	log.info(vo.toString());
    }
}