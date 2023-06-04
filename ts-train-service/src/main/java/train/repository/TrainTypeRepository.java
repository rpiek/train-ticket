package train.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import train.entity.TrainType;

import java.util.List;
import java.util.Optional;

@Repository
public interface TrainTypeRepository extends CrudRepository<TrainType,String> {

    @NewSpan("database")
    Optional<TrainType> findById(String id);
    @NewSpan("database")
    @Override
    List<TrainType> findAll();
    @NewSpan("database")
    void deleteById(String id);
    @NewSpan("database")
    TrainType findByName(String name);

    @NewSpan("database")
    @Query(value="SELECT * from train_type where name in ?1", nativeQuery = true)
    List<TrainType> findByNames(List<String> names);
}
