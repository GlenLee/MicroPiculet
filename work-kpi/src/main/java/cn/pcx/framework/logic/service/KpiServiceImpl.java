package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.Id;
import cn.pcx.framework.logic.entity.KpiEntity;
import cn.pcx.framework.toolkit.DbHelper;
import org.springframework.stereotype.Service;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@Service
public class KpiServiceImpl implements KpiServiceI {

    @Override
    public List<Map<String, Object>> queryList() {
        ResultSet rs = DbHelper.executeQuery("SELECT * FROM work_kpi_info");
        try {
            return DbHelper.convertList(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Map<String, Object> queryModel(int id) {
        ResultSet rs = DbHelper.executeQuery("SELECT * FROM work_kpi_info");
        try {
            return DbHelper.convertOne(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void save(KpiEntity entity) {
        try {
            String sql = "INSERT INTO work_kpi_info(", fields = "", vs = "";
            ArrayList<Object> values = new ArrayList<Object>();

            Field[] fs = entity.getClass().getDeclaredFields();
            for (int i = 0; i < fs.length; i++) {
                Field field = fs[i];

                Id id = field.getAnnotation(Id.class);
                if (id == null) {
                    String name = field.getName();

                    fields += ("".equals(fields) ? "" : ",") + name;
                    Method m = entity.getClass().getMethod("get" + name);
                    values.add(m.invoke(entity));

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
    public void delete(int id) {
        DbHelper.executeNonQuery("DELETE FROM work_kpi_info WHERE Id=?", id);
    }
}
