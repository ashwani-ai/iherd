package farmerprofile.validation.UserService;

import farmerprofile.validation.Repository.UserRepository;
import farmerprofile.validation.models.User;
import farmerprofile.validation.request.UserRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import farmerprofile.validation.exception.UserNotFoundException;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository repository;

    public User saveUser(UserRequest userRequest) {
        User user = User.build(0, userRequest.cattleId(), userRequest.getBREED(),
                userRequest.getAge(), userRequest.getRFIDnumber(), userRequest.getLASTAIDATE());
        return repository.save(user);
    }

    public List<User> getALlUsers() {
        return repository.findAll();

    }

    public User getUser(int id) throws UserNotFoundException {
        User user = repository.findByUserId(id);
        if (user != null) {
            return user;
        } else {
            throw new UserNotFoundException("user not found with id : " + id);
        }
    }
}