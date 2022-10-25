package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoEatdealVO;
import com.team.service.EatdealServiceImpl;
import com.team.service.FileServiceImpl;

@Controller
public class EatdealController {
	
	@Autowired
	private EatdealServiceImpl eatdealService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	
	
	/**
	 * admin_eatdeal_content.do
	 */
	@RequestMapping(value = "/admin_eatdeal_content.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_content(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB는 서비스쪽에서 관리
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid); //서비스쪽 메소드 호출
		
		//if(vo != null){
		//	dao.updateHits(nid);
		//}
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_content");
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_delete.do
	 */
	@RequestMapping(value = "/admin_eatdeal_delete.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_delete(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		mv.addObject("eid", eid);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_delete");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_delete_check.do
	 */
	@RequestMapping(value="/admin_eatdeal_delete_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_delete_check(String eid, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
	//	System.out.println("eid="+eid);
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서!
		
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//int result = dao.delete(nid);
		int result = eatdealService.getDeleteResult(eid);
		if(result == 1){
			//파일이 있는 게시글일 경우 게시글과 함께 upload 폴더의 파일도 삭제
//			if(vo.getNsfile() != null) {
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File old_file = new File(path + vo.getNsfile());
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
			fileService.fileDelete(vo, request);//위의 주석처리한 코드를 처리하는 서비스쪽 메소드
			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_list.do : Eatdeal 전체리스트
	 */
	@RequestMapping(value = "/admin_eatdeal_list.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_list(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		MangoEatdealVO vo = eatdealService.getContent(eid); //서비스쪽 메소드 호출
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoEatdealVO> list = eatdealService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_list");
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_update.do : eatdeal 수정화면
	 */
	@RequestMapping(value = "/admin_eatdeal_update.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_update(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB는 서비스쪽에서 처리
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_update");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_update_check.do 
	 */
	@RequestMapping(value="/admin_eatdeal_update_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_update_check(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
//		String old_filename = vo.getNsfile(); //수정화면(admin_notice_update.jsp)에서 hidden으로 넘어오는 기존 upload 폴더에 저장된 파일명
												//이 기존의 파일의 이름 값을 미리 변수로 구해놓는다
		
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일을 선택한 경우      //서비스쪽에서 진행하여 주석처리
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());
//			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
//		}
//		vo = fileService.update_fileCheck(vo);//위의 주석처리한 코드를 서비스쪽으로 이동하였고, 그 메소드 호출한 것
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 처리
		//int result = dao.update(vo);
		int result = eatdealService.getUpdateResult(vo);
		if(result ==1){
			//새로운 파일을 upload 폴더에 저장한 후 기존의 파일은 삭제
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //새로운 파일을 선택한 경우
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File new_file = new File(path + vo.getNsfile());
//				vo.getFile1().transferTo(new_file);
//				
//				//기존 파일이 있을 경우 삭제
//				File old_file = new File(path + old_filename);
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
//			fileService.update_filesave(vo, request, old_filename); //위의 주석처리한 코드를 이동시킨 서비스쪽 메소드 호출
			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_write.do
	 */
	@RequestMapping(value = "/admin_eatdeal_write.do", method = RequestMethod.GET)
	public String admin_eatdeal_write() {
		return "/admin/admin_eatdeal/admin_eatdeal_write";
	}
	
	/**
	 * admin_eatdeal_write_check.do
	 */
	@RequestMapping(value = "/admin_eatdeal_write_check.do", method = RequestMethod.POST)
	public ModelAndView admin_eatdeal_write_check(MangoEatdealVO vo, HttpServletRequest request) throws Exception {
		
//		//파일이 선택되었는지 체크      //이 부분은 FileServiceImpl.java에서 진행한다
//		if(vo.getFile1().getOriginalFilename().equals("")) {//파일이 선택되어있지 않은 경우
//			vo.setNfile("");
//			vo.setNsfile("");// cf) 자바에서의 null과 DB에서의 null은 타입이 다르다. 자바에서 ""를 주어야만 DB에서 null로 인식한다
//		}else {//파일이 선택된 경우
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());//DB의 nfile에 업로드한 파일의 이름을 문자데이터로 담는다
//			vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
//		}
		vo = fileService.multiFileCheck(vo); //서비스쪽 메소드 호출(위의 주석처리 내용임)
		
		ModelAndView mv = new ModelAndView();
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 처리
		//int result = dao.insert(vo);
		int result = eatdealService.getWriteResult(vo);
		if(result == 1){
			
//			//파일이 있는 경우 upload 폴더에 파일 저장  //해당 부분 서비스쪽에서 진행
//			if(!vo.getFile1().getOriginalFilename().equals("")) {//DB의 nfile에 데이터가 null이 아닌 경우를 말한다
//																//그래서 !vo.getNfile().equals("")도 가능하다
//				
//				//upload 폴더의 경로를 가져오기 위해, HttpServletRequest 객체를 파라미터로 가져온다
//				//(이클립스는 /resources/upload에서 파일 바로 찾지 못한다)
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File file = new File(path+vo.getNsfile()); //여기까지 작업하면 이름이 nsfile인 0kb짜리 비어있는 파일이 생성된다
//				vo.getFile1().transferTo(file); //여기까지 작업해야 비로소 업로드한 파일이 온전하게 채워져서 생성된다
//			}
			fileService.multiFileSave(vo, request); //위코드를 이동한 서비스쪽 메소드 호출
			
			//response.sendRedirect("admin_notice_list.jsp");
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			//response.sendRedirect("../errorPage.jsp");
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_purchase.do : eatdeal 구매화면
	 */
	@RequestMapping(value = "/admin_eatdeal_purchase.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_purchase(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB는 서비스쪽에서 처리
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_purchase");
		
		return mv;
	}
	
	/**
	 * admin_eatdeal_purchase_check.do 
	 */
	@RequestMapping(value="/admin_eatdeal_purchase_check.do", method=RequestMethod.POST)
	public ModelAndView admin_eatdeal_purchase_check(String eid, HttpServletRequest request) throws Exception {
	//	System.out.println("eid="+eid);
		ModelAndView mv = new ModelAndView();
		
	//	MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //서비스쪽에서 처리
		//int result = dao.update(vo);
		int result = eatdealService.getPurchaseResult(eid);
		if(result == 1){

			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	
}
