package cn.pcx.framework.logic.service;

import cn.pcx.framework.logic.entity.ProjectEntity;

import java.util.List;
import java.util.Map;

/**
 * Created by pcx.cn on 17/06/08.
 */
public interface ProjectServiceI {

    List<Map<String, Object>> getProjectList();

    Map<String, Object> getProject(int pid);

    void saveProject(ProjectEntity project);

    void deleteProject(int pid);
}
