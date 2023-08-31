package security.repository;

import java.util.ArrayList;
import java.util.Optional;
import security.entity.Order;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author fdse
 */
@Repository
public interface OrderRepository extends JpaRepository<Order, String> {

    @NewSpan("databaseRead")
    @Override
    Optional<Order> findById(String id);

    @NewSpan("databaseRead")
    @Override
    ArrayList<Order> findAll();

    @NewSpan("databaseRead")
    ArrayList<Order> findByAccountId(String accountId);

    @NewSpan("databaseRead")
    ArrayList<Order> findByTravelDateAndTrainNumber(String travelDate,String trainNumber);

    @NewSpan("databaseWrite")
    @Override
    void deleteById(String id);

    @NewSpan("databaseWrite")
    @Override
    <S extends Order> S save(S entity);

}
