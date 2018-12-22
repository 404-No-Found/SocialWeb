package Utils;


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class MailUtils {
    public static void sendMail(String email, String emailMsg) throws MessagingException {
        Properties prop = new Properties();
        prop.setProperty("mail.transport.protocol","SMTP");
        prop.setProperty("mail.host","smtp.sohu.com");
        prop.setProperty("mail.smtp.auth","true");
        Authenticator auth = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                String un = "jasonper@sohu.com";
                String pw = "15191678056LH";
                return new PasswordAuthentication(un,pw);
            }
        };

        Session session = Session.getInstance(prop,auth);

        Transport ts = session.getTransport("smtp");
        ts.connect("smtp.sohu.com", "jasonper@sohu.com", "15191678056LH");
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress("jasonper@sohu.com"));
        message.setRecipient(Message.RecipientType.TO,new InternetAddress(email));
        message.setSubject("用户激活");
        message.setContent(emailMsg,"text/html;charset=utf-8");
        ts.send(message);
    }
}