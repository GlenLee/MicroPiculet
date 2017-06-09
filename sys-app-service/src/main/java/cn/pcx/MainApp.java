package cn.pcx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * APP微服务组件，是很多其他服务的基础服务，提供APP注册管理、用户管理、角色管理、组织管理、功能管理、授权等功能
 * Created by glen on 17/06/05.
 */
@SpringBootApplication
public class MainApp {
    public static void main(String[] args) {
        SpringApplication.run(MainApp.class, args);
    }
}
