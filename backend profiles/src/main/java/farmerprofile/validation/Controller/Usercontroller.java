package farmerprofile.validation.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import farmerprofile.validation.models.User;
import farmerprofile.validation.UserService.UserService;
import farmerprofile.validation.request.UserRequest;
import farmerprofile.validation.exception.UserNotFoundException;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/users")
public class Usercontroller {
    @Autowired
    private UserService service;

    @PostMapping("/save")
    public ResponseEntity<User> saveUser(@RequestBody @Valid UserRequest userRequest) {
        return new ResponseEntity<>(service.saveUser(userRequest), HttpStatus.CREATED);
    }

}
