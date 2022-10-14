package cattleprofile.validation.Repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import farmerprofile.validation.models.User;

public interface UserRepository extends MongoRepository<User, Integer> {
    User findByUserId(int CATTLEid);
}
