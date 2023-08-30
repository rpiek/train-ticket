package fdse.microservice.repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import fdse.microservice.entity.Route;

/**
 * @author fdse
 */
@Repository
public interface RouteRepository extends CrudRepository<Route, String> {

    /**
     * find route by id
     *
     * @param id id
     * @return Route
     */
    @NewSpan("databaseRead")
    Optional<Route> findById(String id);

    /**
     * find route by ids
     *
     * @param ids ids
     * @return Route
     */
    @NewSpan("databaseRead")
    @Query(value="SELECT * from route where id in ?1", nativeQuery = true)
    List<Route> findByIds(List<String> ids);

    /**
     * find all routes
     *
     * @return ArrayList<Route>
     */
    @NewSpan("databaseRead")
    @Override
    ArrayList<Route> findAll();

    /**
     * remove route via id
     *
     * @param id id
     */
    @NewSpan("databaseWrite")
    void removeRouteById(String id);

    /**
     * return route with id from StartStationId to TerminalStationId
     *
     * @param startStation  Start Station Name
     * @param endStation  end Station Name
     * @return ArrayList<Route>
     */
    @NewSpan("databaseRead")
    ArrayList<Route> findByStartStationAndEndStation(String startStation, String endStation);

    @NewSpan("databaseWrite")
    @Override
    <S extends Route> S save(S entity);

}
