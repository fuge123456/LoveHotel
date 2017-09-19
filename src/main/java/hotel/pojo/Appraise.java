package hotel.pojo;

/**
 * Created by BIG on 2017/9/14.
 */
public class Appraise {
    /**
     * 评价表ID
     */
    private String appraiseId;
    /**
     * 用户ID
     */
    private String userId;
    /**
     * 酒店ID
     */
    private String hotelId;
    /**
     * 评分
     */
    private String score;
    /**
     * 评价内容
     */
    private String remark;


    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getAppraiseId() {
        return appraiseId;
    }

    public void setAppraiseId(String appraiseId) {
        this.appraiseId = appraiseId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }
}
