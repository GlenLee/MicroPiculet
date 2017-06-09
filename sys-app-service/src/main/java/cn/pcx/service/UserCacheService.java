package cn.pcx.service;

import cn.pcx.controller.DbHelper;
import cn.pcx.entity.UserEnitiy;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by glen on 17/06/06.
 */
public class UserCacheService {

    public static Map<String, UserEnitiy> users = null;

    public UserCacheService() {
        if (users == null)
            users = new HashMap<String, UserEnitiy>();

        if (!isInitialized()) {
            ResultSet rs = DbHelper.executeQuery("SELECT id, account, password, realname, nickname FROM zt_user");
            try {
                while (rs.next()) {
                    UserEnitiy user = new UserEnitiy(rs.getInt("id"), rs.getString("account"), rs.getString("password"), rs.getString("realname"), rs.getString("password"));
                    addUser(user);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DbHelper.free(rs);
        }
    }

    public void addUser(UserEnitiy user) {
        users.put(String.valueOf(user.getId()), user);
    }

    public UserEnitiy getUser(String userId) {
        return users.get(userId);
    }

    public List<String> getUserKeys() {
        return new ArrayList<String>(users.keySet());
    }

    public List<UserEnitiy> getUserList() {
        return new ArrayList<UserEnitiy>(users.values());
    }

    public void removeUser(String userId) {
        users.remove(userId);
    }

    public void clear() {
        users.clear();
    }

    public boolean isInitialized() {
        return users != null && users.size() > 0;
    }
}
