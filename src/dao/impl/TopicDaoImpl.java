package dao.impl;

import dao.TopicDao;
import entity.Board;
import entity.Topic;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TopicDaoImpl extends BaseDao implements TopicDao {
    private Connection conn =null;
    private PreparedStatement pstmt = null;
    private ResultSet rs =null;

    /**
     * ��������
     * @param topic
     * @return ��������
     */
    @Override
    public int addTopic(Topic topic) {
        String sql =
                "insert into TBL_TOPIC(title,content,publishTime,modifyTime,uId,boardId) values(?,?,?,?,"+
                        topic.getUserId() +","+ topic.getBoardId() +")";
        String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        String[] param = {topic.getTitle(),topic.getContent(),time,time};
        return this.executeSQL(sql, param);
    }

    /**
     * ɾ������
     * @param topicId
     * @return ɾ������
     */
    @Override
    public int deleteTopic(int topicId) {
        String sql =
                "delete from TBL_TOPIC where topicId = "+ topicId ;
        String[] param = {};
        return this.executeSQL(sql, param);
    }

    /**
     * ��������
     * @param topic
     * @return ��������
     */
    @Override
    public int updateTopic(Topic topic) {
        String sql =
                "update TBL_TOPIC set where title = " +topic.getTitle()
                        + "where topicId = "+ topic.getTopicId();
        String[] param = {};
        return this.executeSQL(sql, param);
    }

    /**
     * ����һ�������������Ϣ
     * @param topicId
     * @return ������Ϣ
     */
    @Override
    public Topic findTopic(int topicId) {
        Topic topic = new Topic();
        String sql =
                "select * from TBL_TOPIC where topicId =" + topicId;
        try{
            conn = this.getConn();
            pstmt= conn.prepareStatement(sql);
            rs = pstmt.executeQuery();rs.next();
            topic.setTopicId(rs.getInt("topicId"));
            topic.setTitle(rs.getString("title"));
            topic.setPublishTime(rs.getDate("publishTime"));
            topic.setModifyTime(rs.getDate("modifyTime"));
            topic.setUserId(rs.getInt("userId"));
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            this.closeAll(conn,pstmt,rs);
        }
        return topic;
    }

    /**
     * ��������List
     * @param page
     * @return ����List
     */
    @Override
    public List findListTopic(int page, int boardId) {
        List list = new ArrayList();
//        int rowBegin = 0;
//        int rowFinal = 20;
//        if (page > 1) {
//            rowBegin = 20 * (page - 1);
//            rowFinal = 20 * page;
//        }
        String sql = "select * from TBL_TOPIC where boardId= "+  boardId;
        try {
            conn = this.getConn();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                Topic topic = new Topic();
                topic.setTopicId(rs.getInt("topicId"));
                topic.setTitle(rs.getString("title"));
                topic.setPublishTime(rs.getDate("publishTime"));
                topic.setUserId(rs.getInt("uId"));
                list.add(topic);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeAll(conn, pstmt, rs);
        }
        return list;
    }

    /**
     * ���ݰ��IDȡ�øð���������
     * @param boardId
     * @return ��������
     */
    public int findCountTopic(int topicId) {
        String sql =
                "select count(*) as count from TBL_TOPIC where topicId = " + topicId;
        System.out.println(sql);
        String[] param = {};
        int count = 0;
        try {
            conn = this.getConn();
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                count = rs.getInt("count");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeAll(conn, pstmt, rs);
        }
        return count;
    }
}