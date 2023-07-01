package user.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import user.entity.User;

import java.util.List;
import java.util.UUID;

/**
 * @author fdse
 */
@Repository
public interface UserRepository extends CrudRepository<User, String> {

    @NewSpan("databaseRead")
    User findByUserName(String userName);

    @NewSpan("databaseRead")
    User findByUserId(String userId);

    @NewSpan("databaseWrite")
    void deleteByUserId(String userId);

    @NewSpan("databaseRead")
    @Override
    List<User> findAll();
}
