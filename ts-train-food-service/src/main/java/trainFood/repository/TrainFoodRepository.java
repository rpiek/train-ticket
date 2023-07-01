package trainFood.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import trainFood.entity.TrainFood;

import java.util.List;
import java.util.UUID;

@Repository
public interface TrainFoodRepository extends CrudRepository<TrainFood, String> {

    @NewSpan("databaseRead")
    TrainFood findById(UUID id);

    @NewSpan("databaseRead")
    @Override
    List<TrainFood> findAll();


    @NewSpan("databaseRead")
    TrainFood findByTripId(String tripId);

    @NewSpan("databaseWrite")
    void deleteById(UUID id);
}
