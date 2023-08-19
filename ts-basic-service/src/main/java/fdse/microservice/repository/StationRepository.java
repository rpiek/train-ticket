package fdse.microservice.repository;

import fdse.microservice.entity.Station;
import java.util.List;
import java.util.Optional;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StationRepository extends CrudRepository<Station,String> {

    @NewSpan("databaseRead")
    Station findByName(String name);

    @NewSpan("databaseRead")
    @Query(value="SELECT * from station where name in ?1", nativeQuery = true)
    List<Station> findByNames(List<String> names);

    @NewSpan("databaseRead")
    Optional<Station> findById(String id);

    @NewSpan("databaseRead")
    @Override
    List<Station> findAll();

    @NewSpan("databaseWrite")
    @Override
    <S extends Station> S save(S entity);

    @NewSpan("databaseWrite")
    @Override
    void delete(Station entity);
}
