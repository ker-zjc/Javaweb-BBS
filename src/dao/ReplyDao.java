package dao;

import entity.Reply;

import java.util.List;

public interface ReplyDao {
    public Reply findReply(int replyId);

    public int addReply(Reply reply);

    public int deleteReply(int replyId);

    public int updateReply(Reply reply);

    public List findListReply(int topicId);

    public int findCountReply(int topicId);
}
