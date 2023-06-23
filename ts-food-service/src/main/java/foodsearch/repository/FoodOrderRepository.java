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

    @NewSpan("database")
    Optional<FoodOrder> findById(String id);

    @NewSpan("database")
    FoodOrder findByOrderId(String orderId);

    @NewSpan("database")
    @Override
    List<FoodOrder> findAll();

    @NewSpan("database")
    void deleteById(UUID id);

    @NewSpan("database")
    void deleteFoodOrderByOrderId(String id);

    @NewSpan("database")
    @Override
    <S extends FoodOrder> S save(S var1);

}
