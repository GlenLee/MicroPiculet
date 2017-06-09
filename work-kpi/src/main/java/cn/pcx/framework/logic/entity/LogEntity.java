package cn.pcx.framework.logic.entity;

import java.util.Date;

/**
 * Created by pcx.cn on 17/06/08.
 */
public class LogEntity {
    @Id
    private int Id;
    private int KpiId;
    private int UserId;
    private Double Score;
    private String Description;
    private Date CreateDate;
    private String Creator;

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public Date getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(Date createDate) {
        CreateDate = createDate;
    }

    public String getCreator() {
        return Creator;
    }

    public void setCreator(String creator) {
        Creator = creator;
    }

    public Double getScore() {
        return Score;
    }

    public void setScore(Double score) {
        Score = score;
    }

    public int getKpiId() {
        return KpiId;
    }

    public void setKpiId(int kpiId) {
        KpiId = kpiId;
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }
}
