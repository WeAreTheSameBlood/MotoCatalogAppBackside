package hlybchenko.motocatalogappbackside;

@org.springframework.stereotype.Service
public class Service {
    public TestModel retString(String str) {
        return new TestModel(str);
    }
}
