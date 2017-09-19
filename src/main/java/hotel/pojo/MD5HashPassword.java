package hotel.pojo;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * Created by BIG on 2017/9/16.
 */
public class MD5HashPassword {
    public static String getPassword(String userName,String password){
        Md5Hash hash=new Md5Hash(password,userName,3);
        return hash.toString();
    }
    public static void main(String[] args){
        Md5Hash hash=new Md5Hash("admin","admin",3);
        System.out.println(hash);
    }
}
