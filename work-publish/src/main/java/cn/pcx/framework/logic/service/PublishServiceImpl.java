package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.PublishEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
@Service
public class PublishServiceImpl implements PublishServiceI {

    @Override
    public List<Map<String, Object>> getPublishList() {
        return null;
    }

    @Override
    public Map<String, Object> getPublish(int pid) {
        return null;
    }

    @Override
    public void savePublish(PublishEntity publish) {

    }

    @Override
    public void deletePublish(int pid) {

    }
}
