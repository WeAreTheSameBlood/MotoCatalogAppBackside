package hlybchenko.motocatalogappbackside.services;

import hlybchenko.motocatalogappbackside.models.TestModel;

@org.springframework.stereotype.Service
public class Service {
    public TestModel retString(String str) {
        return new TestModel(str);
    }
}
