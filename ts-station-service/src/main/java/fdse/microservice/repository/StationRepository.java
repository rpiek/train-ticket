package fdse.microservice.repository;

import fdse.microservice.entity.Station;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StationRepository extends CrudRepository<Station,String> {

    @NewSpan("database")
    Station findByName(String name);

    @NewSpan("database")
    @Query(value="SELECT * from station where name in ?1", nativeQuery = true)
    List<Station> findByNames(List<String> names);

    @NewSpan("database")
    Optional<Station> findById(String id);

    @NewSpan("database")
    @Override
    List<Station> findAll();

    @NewSpan("database")
    @Override
    <S extends Station> S save(S entity);

    @NewSpan("database")
    @Override
    void delete(Station entity);
}
