package assurance.repository;

import assurance.entity.Assurance;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Optional;

/**
 * @author fdse
 */
@Repository
public interface AssuranceRepository  extends CrudRepository<Assurance, String> {

    /**
     * find by id
     *
     * @param id id
     * @return Assurance
     */
    @NewSpan("databaseRead")
    Optional<Assurance> findById(String id);

    /**
     * find by order id
     *
     * @param orderId order id
     * @return Assurance
     */
    @NewSpan("databaseRead")
    Assurance findByOrderId(String orderId);

    /**
     * delete by id
     *
     * @param id id
     * @return null
     */
    @NewSpan("databaseWrite")
    @Transactional
    void deleteById(String id);

    /**
     * remove assurance by order id
     *
     * @param orderId order id
     * @return null
     */
    @NewSpan("databaseWrite")
    @Transactional
    void removeAssuranceByOrderId(String orderId);

    /**
     * find all
     *
     * @return ArrayList<Assurance>
     */
    @NewSpan("databaseRead")
    @Override
    ArrayList<Assurance> findAll();

    @NewSpan("databaseWrite")
    @Override
    <S extends Assurance> S save(S entity);

}
