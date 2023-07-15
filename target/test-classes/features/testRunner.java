package features;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

/*
@RunWith(Karate.class)
public class testRunner {
}
*/
public class testRunner {

    @Test
    public void testKarate() {
        // Run all feature files in the 'src/test/java' directory and generate a test report
        Results results = Runner.path("classpath:").tags("~@ignore").parallel(1);
        // Check if any tests failed and print the test report to the console
        assert results.getFailCount() == 0 : results.getErrorMessages();
    }

}