package dao;

import entity.Topic;

import java.util.List;

public interface TopicDao {
    public Topic findTopic(int topicId);

    public List findListTopic(int page, int boardId);

    public int addTopic (Topic topic);

    public int deleteTopic (int topicId);

    public int updateTopic(Topic topic);

    public int findCountTopic(int topicId);
}
