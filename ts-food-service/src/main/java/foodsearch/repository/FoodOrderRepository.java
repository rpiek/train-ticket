package foodsearch.repository;

import foodsearch.entity.FoodOrder;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface FoodOrderRepository extends CrudRepository<FoodOrder, String> {

    @NewSpan("databaseRead")
    Optional<FoodOrder> findById(String id);

    @NewSpan("databaseRead")
    FoodOrder findByOrderId(String orderId);

    @NewSpan("databaseRead")
    @Override
    List<FoodOrder> findAll();

    @NewSpan("databaseWrite")
    void deleteById(UUID id);

    @NewSpan("databaseWrite")
    void deleteFoodOrderByOrderId(String id);

    @NewSpan("databaseWrite")
    @Override
    <S extends FoodOrder> S save(S var1);

}
