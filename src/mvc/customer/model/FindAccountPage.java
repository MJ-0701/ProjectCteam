package mvc.customer.model;


import java.util.HashMap;
import java.util.Map;


import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import mvc.customer.service.MemberService;
import mvc.email.Email;
import mvc.signup.dao.SignUpDao;



@RestController
public class FindAccountPage {

	@Autowired
	private SignUpDao signUpDao;

	@Autowired
	private Email email;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/findID")
	public String findId() {
		return "find_account/findAccount";
	}

	@RequestMapping(value = "/idCheck")
	@ResponseBody
	public int idChk(String aid) {
		int cnt = signUpDao.aidCheck(aid);
		return cnt;
	}
	
	@RequestMapping("/ChangePWD")
	public String changePWD() {
		return "login/loginform";
	}
	
	@RequestMapping("/passwordFindform")
	public String passwordChangeform() {
		return "find_account/passwordFind";
	}
	

	
	@RequestMapping(value = "/passwordFind", method = RequestMethod.POST)
	public ModelAndView sendEmail(String aid,String dname, ModelMap model, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView();
		String USERNAME = dname;
		String EMAIL = aid;
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("aid",aid);
		paramMap.put("dname",dname);
		String PASSWORD = memberService.getPw(paramMap);
		mv.addObject("email", EMAIL);
		mv.addObject("username", USERNAME);
		if(PASSWORD!=null) {
			email.setContent("??????????????? "+PASSWORD+" ?????????."); // ???????????? ?????? ?????????
			email.setReceiver(EMAIL); // ???????????? ????????? ??????
			email.setSubject(USERNAME+"??? ???????????? ?????? ???????????????."); // ???????????? ?????? ??????
			try {
				MimeMessage msg = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper 
				= new MimeMessageHelper(msg, true, "UTF-8");
				messageHelper.setSubject(email.getSubject());
				messageHelper.setText(email.getContent());
				messageHelper.setTo(email.getReceiver());
				messageHelper.setFrom("coaudwjd@gmail.com"); // ????????? ?????? ??????(root-context.xml ?????? ??????????????? ????????????)
				msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(email.getReceiver()));
				mailSender.send(msg);
				mv.setViewName("login/loginform");
			}catch(MessagingException e) {
				System.out.println("MessagingException");
				e.printStackTrace();
			}			
			return mv;
		}else {
			mv.setViewName("redirect:passwordFindform");
			return mv;
		}

		
	}
	

	
	
}