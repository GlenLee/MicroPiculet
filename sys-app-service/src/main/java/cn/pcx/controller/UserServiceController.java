package cn.pcx.controller;

import cn.pcx.entity.UserEnitiy;
import cn.pcx.service.UserCacheService;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.expression.Expression;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by dell on 17/06/05.
 */
@RestController
public class UserServiceController {

    /**
     * 手动刷新缓存
     * @return
     */
    @ApiOperation(value="刷新用户缓存", notes="")
    @RequestMapping(value = "/user/refresh", method = { RequestMethod.GET })
    public JSONObject refresh() {
        JSONObject j = new JSONObject();

        new UserCacheService().clear();

        j.put("code", 1);
        return j;
    }

    /**
     * 获取用户列表
     * @return
     */
    @ApiOperation(value="获取用户列表", notes="")
    @RequestMapping(value = "/user/list", method = { RequestMethod.GET })
    public JSONObject userList() {
        JSONObject j = new JSONObject();

        List<UserEnitiy> users = new UserCacheService().getUserList();

        JSONArray arr = new JSONArray();
        for (UserEnitiy user : users) {
            JSONObject u = new JSONObject();
            u.put("id", user.getId());
            u.put("account", user.getAccount());
            u.put("password", user.getPassword());
            u.put("realname", user.getRealname());
            u.put("nickname", user.getNickname());
            arr.add(u);
        }
        j.put("code", 1);
        j.put("users", arr);

        return j;
    }

    /**
     * 获取用户索引
     * @return
     */
    @ApiOperation(value="获取用户键值列表", notes="笔记")
    @RequestMapping(value = "/user/keys", method = { RequestMethod.GET })
    public JSONObject userKeys() {
        JSONObject j = new JSONObject();

        List<String> keys = new UserCacheService().getUserKeys();

        j.put("code", 1);
        j.put("keys", keys);

        return j;
    }

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    @ApiOperation(value="获取用户信息")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long")
    @RequestMapping(value = "/user/info/{userId}", method = { RequestMethod.GET, RequestMethod.POST })
    public JSONObject queryUser(@PathVariable String userId) {
        JSONObject j = new JSONObject();
        System.out.println(userId);

        UserEnitiy user = new UserCacheService().getUser(userId);

        j.put("code", 1);
        j.put("user", user);

        return j;
    }

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    @ApiOperation(value="删除用户")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long")
    @RequestMapping(value = "/user/info/{userId}", method = { RequestMethod.DELETE })
    public JSONObject deleteUser(@PathVariable String userId) {
        JSONObject j = new JSONObject();
        System.out.println(userId);

        UserEnitiy user = new UserCacheService().getUser(userId);

        j.put("code", 1);
        j.put("user", user);

        return j;
    }

    /**
     * 获取用户信息
     * @param userId
     * @return
     */
    @ApiOperation(value="更新用户信息")
    @ApiImplicitParam(name = "userId", value = "用户ID", required = true, dataType = "Long")
    @RequestMapping(value = "/user/info/{userId}", method = { RequestMethod.PUT })
    public JSONObject updateUser(@PathVariable String userId) {
        JSONObject j = new JSONObject();
        System.out.println(userId);

        UserEnitiy user = new UserCacheService().getUser(userId);

        j.put("code", 1);
        j.put("user", user);

        return j;
    }

}
