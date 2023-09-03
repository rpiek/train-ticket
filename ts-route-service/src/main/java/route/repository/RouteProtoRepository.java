package route.repository;

import java.util.List;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import route.entity.Route;
import route.entity.RouteOuterClass;

@Repository
public interface RouteProtoRepository extends CrudRepository<RouteOuterClass.Route, String> {

    @NewSpan("databaseRead")
    @Query(value = "SELECT * FROM route WHERE id IN ?1", nativeQuery = true)
    List<RouteOuterClass.Route> findByIds(List<String> ids);


}
