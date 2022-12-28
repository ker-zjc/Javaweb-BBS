package dao;

import entity.User;

public interface UserDao {
	public static final int FEMALE = 1;
	public static final int MALE = 2;
	/**
	 * 根据用户名查找论坛用户
	 * @param userName
	 * @return
	 */
	public User findUser(String userName);
	/**
	 * 根据用户id查找论坛用户
	 * @param userId
	 * @return
	 */
	public User findUser(int userId);
	/**
	 * 添加论坛用户，返回添加个数
	 * @param user
	 * @return
	 */
	public int addUser(User user);
	/**
	 * 修改论坛用户的信息，返回修改个数
	 * @param user
	 * @return
	 */
	public int updateUser(User user);
}
