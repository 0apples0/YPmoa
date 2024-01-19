package com.moa.youthpolicy.common;

import java.io.File;

public class FileUtil {
	
	public static String checkSameFileName(String fileName, String path) {
			
			//fileName에서 확장자를 뺀 파일명을 가려내자.
			//"."의 위치를 알아내야한다.
			
			int period = fileName.lastIndexOf(".");
			//파일명 추출
			String f_name = fileName.substring(0, period);
			//확장자 추출
			String surffix = fileName.substring(period);
			
			//전체경로
			String saveFileName = path+File.separator+fileName;
			
			//파일객체 생성 하여 파일 존재 여부 체크
			File f = new File(saveFileName);
			
			//같은 이름이 있을경우 파일명뒤에 숫자를 붙인다
			int idx = 1;
			
			while(f != null && f.exists()) {
				//같은 파일이 있는 경우에만 수행
				
				StringBuffer sb = new StringBuffer();
				
				sb.append(f_name);//파일명
				sb.append(idx++);//숫자 붙인 후 1증가
				sb.append(surffix);//확장자
				
				fileName = sb.toString();
				
				saveFileName = path + File.separator + fileName;
				
				f = new File(saveFileName);
			}
			
			//중복되지 않는 파일명을 반환
			return fileName;
		}
}