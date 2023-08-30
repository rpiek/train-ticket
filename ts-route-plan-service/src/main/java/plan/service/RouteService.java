package plan.service;

import edu.fudan.common.util.Response;
import plan.entity.Route;
import plan.entity.RouteInfo;
import java.util.List;
import org.springframework.http.HttpHeaders;


/**
 * @author fdse
 */
public interface RouteService {

    /**
     * get route with id
     *
     * @param startId start station id
     * @param terminalId terminal station id
     * @param headers headers
     * @return Response
     */
    Response getRouteByStartAndEnd(String startId, String terminalId, HttpHeaders headers);

    List<Route> getRouteByStartAndEndIntra(String startId, String terminalId);


    /**
     * get all routes
     *
     * @param headers headers
     * @return Response
     */
    Response getAllRoutes(HttpHeaders headers);

    /**
     * get route by id
     *
     * @param routeId route id
     * @param headers headers
     * @return Response
     */
    Response getRouteById(String routeId, HttpHeaders headers);

    Route getRouteByIdIntra(String routeId);

    /**
     * get route by ids
     *
     * @param routeIds route ids
     * @param headers headers
     * @return Response
     */
    Response getRouteByIds(List<String> routeIds, HttpHeaders headers);

    /**
     * delete route by id
     *
     * @param routeId route id
     * @param headers headers
     * @return Response
     */
    Response deleteRoute(String routeId, HttpHeaders headers);

    /**
     * create route and modify
     *
     * @param info info
     * @param headers headers
     * @return Response
     */
    Response createAndModify(RouteInfo info, HttpHeaders headers);

}
