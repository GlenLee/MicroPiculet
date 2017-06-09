package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.PublishEntity;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
public interface PublishServiceI {

    List<Map<String, Object>> getPublishList();

    Map<String, Object> getPublish(int pid);

    void savePublish(PublishEntity publish);

    void deletePublish(int pid);

}
