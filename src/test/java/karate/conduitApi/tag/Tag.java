package karate.conduitApi.tag;

import com.intuit.karate.junit5.Karate;

public class Tag {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate.conduitApi/tag/tag.feature").relativeTo(getClass());
    }
}
