package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.Id;
import cn.pcx.framework.logic.entity.ProjectEntity;
import cn.pcx.framework.toolkit.DbHelper;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@Service
public class ProjectServiceImpl implements ProjectServiceI {

    @Override
    public List<Map<String, Object>> getProjectList() {
        ResultSet rs = DbHelper.executeQuery("SELECT * FROM work_project_info");
        try {
            return DbHelper.convertList(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Map<String, Object> getProject(int pid) {
        return null;
    }

    @Override
    public void saveProject(ProjectEntity model) {
        try {
            String sql = "INSERT INTO work_project_info(", fields = "", vs = "";
            ArrayList<Object> values = new ArrayList<Object>();

            Field[] fs = model.getClass().getDeclaredFields();
            for (int i = 0; i < fs.length; i++) {
                Field field = fs[i];

                Id id = field.getAnnotation(Id.class);
                if (id == null) {
                    String name = field.getName();

                    fields += ("".equals(fields) ? "" : ",") + name;
                    Method m = model.getClass().getMethod("get" + name);
                    values.add(m.invoke(model));

                    vs += vs.equals("") ? "?" : ",?";
                }
            }

            sql = sql + fields + ")VALUES(" + vs + ")";
            System.out.println(sql);
            DbHelper.executeNonQuery(sql, values.toArray());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProject(int pid) {

    }
}
