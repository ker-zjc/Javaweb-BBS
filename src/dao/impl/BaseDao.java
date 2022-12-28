package dao.impl;

import java.sql.*;


public class BaseDao {
	public final static String driver = "com.mysql.cj.jdbc.Driver";
	public final static String url = "jdbc:mysql://152.136.110.177:3306/bbs";
	public final static String dbName = "bbs";  //数据库用户名
	public final static String dbPass = "bbbbss"; //数据库密码
	/**
	 * 得到数据库连接
	 * 
	 * @return 数据库连接
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public Connection getConn() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, dbName, dbPass);
		return conn;	
	}
	/**
	 * 释放资源
	 * @param rs 结果集
	 * @param conn PreparedStatement对象
	 * @param pstmt 结果集
	 */
	public void closeAll(Connection conn, PreparedStatement pstmt,ResultSet rs){
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/**
	 * 执行SQL语句，可以进行增删改的操作，不能执行查询
	 * @param  sql 预编译的SQL语句
	 * @param param 预编译的SQL语句中的'?'参数的字符串数组
	 * @return 影响的条数
	 */
	public int executeSQL(String preparedSql,String[] param){
		Connection conn = null;
		PreparedStatement pstmt = null;
		int num = 0;
		
		try {
			conn = getConn();
			pstmt = conn.prepareStatement(preparedSql);
			if(param != null){
				for(int i=0;i<param.length;i++){
					pstmt.setString(i+1, param[i]);
				}
			}
			num = pstmt.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn,pstmt,null);
		}
		return num;
	}
}
