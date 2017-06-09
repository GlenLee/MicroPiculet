package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.LogEntity;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
public interface LogServiceI {

    List<Map<String, Object>> queryList();

    Map<String, Object> queryModel(int id);

    void save(LogEntity entity);

    void delete(int id);
}
