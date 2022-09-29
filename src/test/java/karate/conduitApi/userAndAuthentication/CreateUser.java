package karate.conduitApi.userAndAuthentication;

import com.intuit.karate.junit5.Karate;

public class CreateUser {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate.conduitApi/test/test.feature").relativeTo(getClass());
    }
}
