package hotel.pojo;

/**
 * Created by BIG on 2017/9/14.
 */
public class Role {
    private String roleId;//角色id
    private String roleName;//角色名称
    private String remark;//角色说明
    private String state;//角色状态

    public String getRoleId() {
        return roleId;
    }
    
    public String getId(){
    	return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    public String getRoleName() {
        return roleName;
    }
    
    public String getName(){
    	return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
