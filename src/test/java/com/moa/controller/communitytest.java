package com.moa.controller;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.moa.youthpolicy.community.domain.CommunityVO;
import com.moa.youthpolicy.community.mapper.CommunityMapper;
import com.moa.youthpolicy.user.domain.UserVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class communitytest {
	@Autowired
    private CommunityMapper communityMapper;
    @Autowired
    private DataSource dataSource;

    @Test
    public void dataSourceTest() {
        try {
            log.info(dataSource.getConnection());
        } catch (Exception e) {
            log.error("test error: " + e.getMessage());
        }
    }
    
    @Test
    public void getTest() {
    	List<CommunityVO> voList = communityMapper.select();
    	for(CommunityVO vo : voList) {
        	log.info(vo.toString());	
    	}

    }
    @Test
    public void countTest() {
    	log.info("결과!: "+communityMapper.countCommunityVO());
    	
    }
    

}
