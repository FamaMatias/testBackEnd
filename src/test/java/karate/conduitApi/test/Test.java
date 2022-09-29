package karate.conduitApi.test;

import com.intuit.karate.junit5.Karate;

public class Test {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate.conduitApi/test/test.feature").relativeTo(getClass());
    }
}
