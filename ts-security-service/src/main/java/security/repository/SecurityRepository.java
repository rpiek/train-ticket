package security.repository;


import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import security.entity.SecurityConfig;
import java.util.ArrayList;
import java.util.Optional;

/**
 * @author fdse
 */
@Repository
public interface SecurityRepository extends CrudRepository<SecurityConfig,String> {


    SecurityConfig findByName(String name);


    @NewSpan("databaseRead")
    Optional<SecurityConfig> findById(String id);

    @Override
    @NewSpan("databaseRead")
    ArrayList<SecurityConfig> findAll();

    void deleteById(String id);
}
