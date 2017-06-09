import freemarker.template.Template;
import freemarker.template.TemplateException;

//import org.hibernate.Query;
import java.io.IOException;

/**
 * Created by dell on 17/06/03.
 */
public class gencode {

    public static void main(String[] args) throws IOException, TemplateException {
        initDtabase();
        loadTemplate();
        createEntities();
        createDao();
        createBusiness();
    }

    private static void initDtabase() {

//        Query queryObject = getSession().createQuery(query);
//        queryObject.setParameter("username", user.getUserName());
//        queryObject.setParameter("passowrd", user.getPassword());
//
//        List<TSUser> users = queryObject.list();
    }

    private static void loadTemplate() {

    }

    private static void createEntities() {

    }

    private static void createDao() {

    }

    private static void createBusiness() {
    }

}
