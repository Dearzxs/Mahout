package com.movie.service;


import org.apache.hadoop.yarn.webapp.hamlet.Hamlet;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.apache.mahout.cf.taste.similarity.precompute.example.GroupLensDataModel;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class BaseItemRecommender {
    public List<String> BIR(String userid,String mid) throws Exception {
        String filePath = Hamlet.A.class.getClassLoader().getResource("ratings1.dat").getFile();
        //准备数据 这里是电影评分数据
        File file = new File(filePath);
        //将数据加载到内存中，GroupLensDataModel是针对开放电影评论数据的
        DataModel dataModel = new GroupLensDataModel(file);
        //计算相似度，相似度算法有很多种，欧几里得、皮尔逊等等。
        ItemSimilarity itemSimilarity = new PearsonCorrelationSimilarity(dataModel);
        //构建推荐器，协同过滤推荐有两种，分别是基于用户的和基于物品的，这里使用基于物品的协同过滤推荐
        GenericItemBasedRecommender recommender = new GenericItemBasedRecommender(dataModel, itemSimilarity);
        //给用户ID等于5的用户推荐10个与34相似的商品
        List<RecommendedItem> recommendedItemList = recommender.recommendedBecause(Long.parseLong(userid), 34, 4);
        //打印推荐的结果
//        System.out.println("使用基于电影的协同过滤算法");
//        System.out.println("根据用户"+userid+"当前浏览的电影"+mid+"推荐4个相似的电影");
        List<String> IdList=new ArrayList<String>();
        for (RecommendedItem recommendedItem : recommendedItemList) {
//            System.out.println(recommendedItem);
            IdList.add(String.valueOf(recommendedItem.getItemID()));
        }
        return IdList;
    }
}
