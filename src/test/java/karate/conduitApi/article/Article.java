package karate.conduitApi.article;


import com.intuit.karate.junit5.Karate;

public class Article {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate.conduitApi/article/article.feature").relativeTo(getClass());
    }
}
