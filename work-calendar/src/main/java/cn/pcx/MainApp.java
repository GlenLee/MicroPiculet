package cn.pcx;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;

/**
 * Created by glen on 17/06/03.
 * 启动主类
 */
@SpringBootApplication
public class MainApp implements EmbeddedServletContainerCustomizer {

    static int SERVER_PORT = 17002;

    public static void main(String[] args) {

        if (args.length > 0) {
            SERVER_PORT = Integer.valueOf(args[0]);
        }

        SpringApplication.run(MainApp.class, args);
    }

    @Override
    public void customize(ConfigurableEmbeddedServletContainer container) {
        System.out.println("@project.name@ 启动端口号：" + SERVER_PORT);
        container.setPort(SERVER_PORT);
    }
}
