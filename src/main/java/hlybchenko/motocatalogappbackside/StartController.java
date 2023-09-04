package hlybchenko.motocatalogappbackside;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/start")
public class StartController {

    private final Service service;

    public StartController(Service service) {
        this.service = service;
    }

    @GetMapping("/startString")
    public TestModel startString() {
        return service.retString("My test str");
    }
}

