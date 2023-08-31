package security.repository.security;


import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import security.entity.security.SecurityConfig;
import java.util.ArrayList;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Qualifier;


/**
 * @author fdse
 */
@Repository
@Qualifier("entityManagerFactory1")
public interface SecurityRepository extends CrudRepository<SecurityConfig,String> {

    SecurityConfig findByName(String name);


    @NewSpan("databaseRead")
    Optional<SecurityConfig> findById(String id);

    @Override
    @NewSpan("databaseRead")
    ArrayList<SecurityConfig> findAll();

    void deleteById(String id);
}
