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
    @NewSpan("database")
    Optional<Assurance> findById(String id);

    /**
     * find by order id
     *
     * @param orderId order id
     * @return Assurance
     */
    @NewSpan("database")
    Assurance findByOrderId(String orderId);

    /**
     * delete by id
     *
     * @param id id
     * @return null
     */
    @NewSpan("database")
    @Transactional
    void deleteById(String id);

    /**
     * remove assurance by order id
     *
     * @param orderId order id
     * @return null
     */
    @NewSpan("database")
    @Transactional
    void removeAssuranceByOrderId(String orderId);

    /**
     * find all
     *
     * @return ArrayList<Assurance>
     */
    @NewSpan("database")
    @Override
    ArrayList<Assurance> findAll();

    @NewSpan("database")
    @Override
    <S extends Assurance> S save(S entity);

}
