package route.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import route.entity.Route;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import route.entity.RouteOuterClass;

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

    @NewSpan("databaseRead")
    @Query(value = "SELECT * FROM route WHERE id IN ?1", nativeQuery = true)
    List<Object[]> findRouteDataByIds(List<String> ids);

    @NewSpan("Check")
    default List<RouteOuterClass.Route> findRouteProtosByIds(List<String> ids) {
        List<Object[]> routeDataList = findRouteDataByIds(ids);
        List<RouteOuterClass.Route> routeProtos = new ArrayList<>();

        for (Object[] routeData : routeDataList) {
            String id = (String) routeData[0];
            List<String> stations = (List<String>) routeData[1];
            List<Integer> distances = (List<Integer>) routeData[2];
            String startStation = (String) routeData[3];
            String endStation = (String) routeData[4];

            RouteOuterClass.Route routeProto = RouteOuterClass.Route.newBuilder()
                    .setId(id)
                    .addAllStations(stations)
                    .addAllDistances(distances)
                    .setStartStation(startStation)
                    .setEndStation(endStation)
                    .build();

            routeProtos.add(routeProto);
        }

        return routeProtos;
    }

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
