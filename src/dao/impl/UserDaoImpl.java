package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

import dao.UserDao;
import entity.Topic;
import entity.User;

public class UserDaoImpl extends BaseDao implements UserDao {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	/**
	 * 添加用户
	 * @param user
	 * @return 添加条数
	 */
	@Override
	public int addUser(User user) {
		String sql =
				"insert into TBL_USER(uName,uPass,head,regTime,gender) values(?,?,?,?,"+ user.getGender()+")";
		String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		String[] param = {user.getUserName(),user.getUserPass(),user.getHead(),time};
		return this.executeSQL(sql, param);
	}

	/**
	 * 修改用户密码
	 * @param user
	 * @return 更新条数
	 */
	@Override
	public int updateUser(User user) {
		String sql = "update TBL_USER set userPass = ? where userId = " + user.getUserId();
		String[] param ={user.getUserPass()};
		return this.executeSQL(sql,param);
	}

	/**
	 * 根据用户名查找用户
	 * @param userName
	 * @return 根据用户名查询的用户对象
	 */
	@Override
	public User findUser(String userName) {
		User user = new User();
		String sql = "select uId,uName,uPass,head,regTime,gender from TBL_USER where uName = \"" + userName + "\"";
		try {
			conn = this.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();rs.next();
			user.setUserId(rs.getInt("uId"));
			user.setUserName(rs.getString("uName"));
			user.setUserPass(rs.getString("uPass"));
			user.setHead(rs.getString("head"));
			user.setRegTime(rs.getDate("regTime"));
			user.setGender(rs.getInt("gender"));
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			this.closeAll(conn,pstmt,rs);
		}
		return user;
	}

	/**
	 * 根据用户ID查找用户
	 * @param userId
	 * @return 用户信息
	 */

	public User findUser(int userId) {
		User user = new User();
		String sql = "select uId,uName,uPass,head,regTime,gender from TBL_USER where uId = " + userId;
		try {
			conn = this.getConn();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();rs.next();
			user.setUserId(rs.getInt("uId"));
			user.setUserName(rs.getString("uName"));
			user.setUserPass(rs.getString("uPass"));
			user.setHead(rs.getString("head"));
			user.setRegTime(rs.getDate("regTime"));
			user.setGender(rs.getInt("gender"));
		}catch (Exception e){
			e.printStackTrace();
		}finally {
			this.closeAll(conn,pstmt,rs);
		}
		return user;
	}


}
