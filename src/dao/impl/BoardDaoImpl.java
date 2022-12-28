package dao.impl;

import dao.BoardDao;
import entity.Board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class BoardDaoImpl extends BaseDao implements BoardDao {
    private Connection conn = null;                 //用于保存数据库连接
    private PreparedStatement pstmt =null;          //用于执行SQL语句
    private ResultSet rs = null;                    //用户保存查询结果集
    private HashMap map = new HashMap();            //保存板块信息
    private int parentId = 0;
    private List sonList = null;

    /**
     * 查找板块
     *
     * @return 封装了板块信息的Map
     */
    public Map findBoard() {
        String sql = "select * from TBL_BOARD order by parentId,boardId";

        try {
            conn = this.getConn();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            sonList = new ArrayList();

            while (rs.next()) {
                if (parentId != rs.getInt("parentId")) {
                    map.put(new Integer(parentId), sonList);
                    sonList = new ArrayList();
                    parentId = rs.getInt("parentId");
                }
                Board board = new Board();
                board.setBoardId(rs.getInt("boardId"));
                board.setBoardName(rs.getString("boardName"));
                sonList.add(board);
            }
            map.put(new Integer(parentId), sonList);
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.closeAll(conn,pstmt,rs);
        }
        return map;
    }

    /**
     * 根据板块id查找板块
     * @param boardId
     * @return 板块名
     */
    @Override
    public Board findBoard(int boardId) {
        Board board = new Board();
        String sql =
                "select boardName from TBL_BOARD where boardId = " + boardId;
        try{
            conn = this.getConn();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();rs.next();
            board.setBoardName(rs.getString("boardName"));

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.closeAll(conn,pstmt,rs);
        }
        return board;
    }
}
