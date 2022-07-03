package site.gamsung.util.user;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMailHtml {
	/**
	 * @MethodName		: sendMailHtml
	 * <pre>
	 * 소스 분석
	 * 1. Properties를 이용하여 Properties를 설정
	 * 2. Authenticator 인증 인스턴스 생성 										:: Authenticator auth
	 * 3. Authenticator 인증을 통해 private 되어있는 defaultSession를 가져오기 온다. 	:: Session session
	 * 4. Smtp 접속정보를 가져온다. 												:: Transport transport
	 * 5. MIME타입과 header를 인식할수 있는 email message를 생성 					:: MimeMessage message
	 * 6. 제목, 보낸사람, 받는사람을 메세지에 set.
	 * 7. 메세지의 바디와 헤더를 가진 객체 생성. 										:: MimeMultipart multipart
	 * 8. 메세지 바디 객체 생성 													:: MimeBodyPart messageBodyPart
	 * 9. 바디객체에 html 주입과 데이터타입,인코딩방식 지정
	 * 10. multipart에 만들어진 바디 객체 주입.
	 * 11. 바디객체 초기화.
	 * 12. 이미지를 넣기 위한 FileDataSource 생성.									:: DataSource fds
	 * 13. 바디겍체의 헨들러 설정
	 * 14. 바디겍체의 헤더 설정.
	 * 15. multipart에 만들어진 바디 객체 주입.
	 * 16. MIME타입과 header를 인식할수 있는 email message에 바디객체와 헤더가 설정되어있는 객체 연결(주입)
	 * 17. 가져온 접속정보 transport를 연결 후 전송.
	 * <pre/>
	 * @param id
	 * @param info
	 * @param text
	 * @param key
	 * @throws Exception
	 */
	public void sendMailHtml(String id, String info, String text, String key) throws Exception{

		Properties prop = System.getProperties();

		// 로그인시 TLS를 사용할 것인지 설정
		prop.put("mail.smtp.starttls.enable", "true");

		// 이메일 발송을 처리해줄 SMTP서버
		prop.put("mail.smtp.host", "smtp.gmail.com");

		// SMTP 서버의 인증을 사용한다는 의미
		prop.put("mail.smtp.auth", "true");

		// TLS의 포트번호는 587이며 SSL의 포트번호는 465이다.
		prop.put("mail.smtp.port", "587");

		prop.put("mail.transport.protocol", "smtp");
		//prop.put("mail.debug", "true");

		// soket문제와 protocol문제 해결
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		//				prop.put("mail.smtp.socketFactory.fallback", "false");
		prop.put("mail.smtp.ssl.protocols", "TLSv1.2");

		// 인증을 위한 class
		Authenticator auth = new MailAuth();

		String from = "gamsungsite@gmail.com";

		// auth 인증을 통해 private되어있는 defaultSession를 가져오기 온다.
		Session session = Session.getDefaultInstance(prop, auth);

		// smtp 접속정보를 가져온다.
		Transport transport = session.getTransport();

		//서로 다른 RFC프로토콜 상에서 정의되는 MIME타입과 header를 인식할수 있는 email message를 가르킴
		MimeMessage message = new MimeMessage(session);


		// 제목
		message.setSubject(info);

		// 보낸사람
		message.setFrom(new InternetAddress(from));

		// 받는사람
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(id));

		// 메세지 헤더와바디 생성
		MimeMultipart multipart = new MimeMultipart("related");

		// 메세지 바디
		MimeBodyPart messageBodyPart = new MimeBodyPart();

		String htmlText="<img src=\"cid:image\"><span><h3>[감성캠핑]</h3>\r\n"
		+ "인증번호는\r[</span><span style=\"color: blue;\">"+key+"</span><span>]입니다.</span>";

		// html 주입과 데이터타입,인코딩방식 지정.
		messageBodyPart.setContent(htmlText, "text/html; charset=UTF-8");
		multipart.addBodyPart(messageBodyPart);
		String img="C:\\Users\\muse1\\OneDrive\\바탕 화면\\메인프로젝트\\KakaoTalk_20220113_170026607.jpg";

		messageBodyPart = new MimeBodyPart();
		DataSource fds = new FileDataSource(img);
		messageBodyPart.setDataHandler(new DataHandler(fds));
		messageBodyPart.setHeader("Content-ID", "<image>");

		multipart.addBodyPart(messageBodyPart);
		message.setContent(multipart);
		transport.connect();
		transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));

		transport.close();
	}

}
