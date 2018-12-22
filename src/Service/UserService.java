package Service;

import Utils.MailUtils;

import javax.mail.MessagingException;

public class UserService {
    public void register(String email) throws MessagingException {

            String emailMsg = "非常感谢您的注册！收到本邮件表示您的账户已经可以使用了！";
            MailUtils.sendMail(email,emailMsg);

    }
}
