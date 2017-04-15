import com.messageSystem.model.dao.UserMessageDao;
import com.messageSystem.model.entity.UserMessage;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by ASUS on 2017/4/15.
 */
public class hhjjhj {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext context
                = new ClassPathXmlApplicationContext("spring.xml");
        System.out.println(context);
        UserMessageDao bean = context.getBean(UserMessageDao.class);
        System.out.println(bean);
        List<UserMessage> list = bean.selectAllAndCompanyById(1);
        UserMessage u = list.get(0);
        System.out.println(u);
    }
}
