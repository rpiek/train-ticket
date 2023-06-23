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

    @NewSpan("database")
    User findByUserName(String userName);

    @NewSpan("database")
    User findByUserId(String userId);

    @NewSpan("database")
    void deleteByUserId(String userId);

    @NewSpan("database")
    @Override
    List<User> findAll();
}
