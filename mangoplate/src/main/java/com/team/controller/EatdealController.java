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
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ����
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
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
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ���!
		
		//CgvNoticeVO vo = dao.select(nid);
		MangoEatdealVO vo = eatdealService.getContent(eid);
		
		//int result = dao.delete(nid);
		int result = eatdealService.getDeleteResult(eid);
		if(result == 1){
			//������ �ִ� �Խñ��� ��� �Խñ۰� �Բ� upload ������ ���ϵ� ����
//			if(vo.getNsfile() != null) {
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File old_file = new File(path + vo.getNsfile());
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
			fileService.fileDelete(vo, request);//���� �ּ�ó���� �ڵ带 ó���ϴ� ������ �޼ҵ�
			
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_list.do : Eatdeal ��ü����Ʈ
	 */
	@RequestMapping(value = "/admin_eatdeal_list.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_list(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		MangoEatdealVO vo = eatdealService.getContent(eid); //������ �޼ҵ� ȣ��
		
		mv.addObject("vo", vo);
		
		
		ArrayList<MangoEatdealVO> list = eatdealService.getList();
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_eatdeal/admin_eatdeal_list");
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_update.do : eatdeal ����ȭ��
	 */
	@RequestMapping(value = "/admin_eatdeal_update.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_update(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ó��
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
		
//		String old_filename = vo.getNsfile(); //����ȭ��(admin_notice_update.jsp)���� hidden���� �Ѿ���� ���� upload ������ ����� ���ϸ�
												//�� ������ ������ �̸� ���� �̸� ������ ���س��´�
		
//		if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ������ ������ ���      //�����ʿ��� �����Ͽ� �ּ�ó��
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());
//			vo.setNsfile(uuid + "_" + vo.getFile1().getOriginalFilename());
//		}
//		vo = fileService.update_fileCheck(vo);//���� �ּ�ó���� �ڵ带 ���������� �̵��Ͽ���, �� �޼ҵ� ȣ���� ��
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.update(vo);
		int result = eatdealService.getUpdateResult(vo);
		if(result ==1){
			//���ο� ������ upload ������ ������ �� ������ ������ ����
//			if(!vo.getFile1().getOriginalFilename().equals("")) { //���ο� ������ ������ ���
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File new_file = new File(path + vo.getNsfile());
//				vo.getFile1().transferTo(new_file);
//				
//				//���� ������ ���� ��� ����
//				File old_file = new File(path + old_filename);
//				if(old_file.exists()) {
//					old_file.delete();
//				}
//			}
//			fileService.update_filesave(vo, request, old_filename); //���� �ּ�ó���� �ڵ带 �̵���Ų ������ �޼ҵ� ȣ��
			
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
		
//		//������ ���õǾ����� üũ      //�� �κ��� FileServiceImpl.java���� �����Ѵ�
//		if(vo.getFile1().getOriginalFilename().equals("")) {//������ ���õǾ����� ���� ���
//			vo.setNfile("");
//			vo.setNsfile("");// cf) �ڹٿ����� null�� DB������ null�� Ÿ���� �ٸ���. �ڹٿ��� ""�� �־�߸� DB���� null�� �ν��Ѵ�
//		}else {//������ ���õ� ���
//			UUID uuid = UUID.randomUUID();
//			
//			vo.setNfile(vo.getFile1().getOriginalFilename());//DB�� nfile�� ���ε��� ������ �̸��� ���ڵ����ͷ� ��´�
//			vo.setNsfile(uuid+"_"+vo.getFile1().getOriginalFilename());
//		}
		vo = fileService.multiFileCheck(vo); //������ �޼ҵ� ȣ��(���� �ּ�ó�� ������)
		
		ModelAndView mv = new ModelAndView();
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
		//int result = dao.insert(vo);
		int result = eatdealService.getWriteResult(vo);
		if(result == 1){
			
//			//������ �ִ� ��� upload ������ ���� ����  //�ش� �κ� �����ʿ��� ����
//			if(!vo.getFile1().getOriginalFilename().equals("")) {//DB�� nfile�� �����Ͱ� null�� �ƴ� ��츦 ���Ѵ�
//																//�׷��� !vo.getNfile().equals("")�� �����ϴ�
//				
//				//upload ������ ��θ� �������� ����, HttpServletRequest ��ü�� �Ķ���ͷ� �����´�
//				//(��Ŭ������ /resources/upload���� ���� �ٷ� ã�� ���Ѵ�)
//				String path = request.getSession().getServletContext().getRealPath("/");
//				path += "\\resources\\upload\\";
//				
//				File file = new File(path+vo.getNsfile()); //������� �۾��ϸ� �̸��� nsfile�� 0kb¥�� ����ִ� ������ �����ȴ�
//				vo.getFile1().transferTo(file); //������� �۾��ؾ� ��μ� ���ε��� ������ �����ϰ� ä������ �����ȴ�
//			}
			fileService.multiFileSave(vo, request); //���ڵ带 �̵��� ������ �޼ҵ� ȣ��
			
			//response.sendRedirect("admin_notice_list.jsp");
			mv.setViewName("redirect:/admin_eatdeal_list.do");
		}else{
			//response.sendRedirect("../errorPage.jsp");
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
	
	/**
	 * admin_eatdeal_purchase.do : eatdeal ����ȭ��
	 */
	@RequestMapping(value = "/admin_eatdeal_purchase.do", method = RequestMethod.GET)
	public ModelAndView admin_eatdeal_purchase(String eid) {
		
		ModelAndView mv = new ModelAndView();
		
		//String nid = request.getParameter("nid");
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //DB�� �����ʿ��� ó��
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
		
		//CgvNoticeDAO dao = new CgvNoticeDAO(); //�����ʿ��� ó��
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
