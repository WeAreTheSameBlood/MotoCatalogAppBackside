package hlybchenko.motocatalogappbackside;

import hlybchenko.motocatalogappbackside.models.TestModel;
import hlybchenko.motocatalogappbackside.services.Service;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ServiceTest {

    @Test
    void retString() {
        Service service = new Service();
        String testStr = "My test str";
        TestModel result = service.retString(testStr);

        assertEquals(testStr, result.getIncludeString());
    }
}