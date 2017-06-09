package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.KpiEntity;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
public interface KpiServiceI {

    List<Map<String, Object>> queryList();

    Map<String, Object> queryModel(int id);

    void save(KpiEntity entity);

    void delete(int id);
}
