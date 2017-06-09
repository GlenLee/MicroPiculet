package cn.pcx.entity;

import java.io.Serializable;

/**
 * Created by dell on 17/06/05.
 */
public class UserEnitiy implements Serializable {
    private int id;
    private String account;
    private String password;
    private String realname;
    private String nickname;

    public UserEnitiy() {}

    public UserEnitiy(int id, String account, String password, String realname, String nickname) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.realname = realname;
        this.nickname = nickname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
}
