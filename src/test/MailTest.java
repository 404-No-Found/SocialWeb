package test;

import Utils.MailUtils;

import javax.mail.MessagingException;

public class MailTest {
    public static void main (String args[]) throws MessagingException {
        MailUtils.sendMail("835501665@qq.com","非常感谢您的注册！请点击这里完成激活账户！");
        System.out.println("操作成功");
    }
}
