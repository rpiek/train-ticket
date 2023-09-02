package route.controller;

import edu.fudan.common.util.Response;
import java.util.stream.Collectors;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import route.entity.Route;
import route.entity.RouteInfo;
import route.service.RouteService;
import route.entity.RouteProto;

import java.util.List;

import static org.springframework.http.ResponseEntity.ok;

/**
 * @author fdse
 */
@RestController
@RequestMapping("/api/v1/routeservice")
public class RouteController {
    private static final Logger LOGGER = LoggerFactory.getLogger(RouteController.class);
    @Autowired
    private RouteService routeService;

    @GetMapping(path = "/welcome")
    public String home() {
        return "Welcome to [ Route Service ] !";
    }

    @PostMapping(path = "/routes")
    public ResponseEntity<Response> createAndModifyRoute(@RequestBody RouteInfo createAndModifyRouteInfo, @RequestHeader HttpHeaders headers) {
        RouteController.LOGGER.info("[createAndModify][Create route][start: {}, end: {}]", createAndModifyRouteInfo.getStartStation(),createAndModifyRouteInfo.getEndStation());
        return ok(routeService.createAndModify(createAndModifyRouteInfo, headers));
    }

    @DeleteMapping(path = "/routes/{routeId}")
    public HttpEntity deleteRoute(@PathVariable String routeId, @RequestHeader HttpHeaders headers) {
        RouteController.LOGGER.info("[deleteRoute][Delete route][RouteId: {}]", routeId);
        return ok(routeService.deleteRoute(routeId, headers));
    }

    @GetMapping(path = "/routes/{routeId}")
    public HttpEntity queryById(@PathVariable String routeId, @RequestHeader HttpHeaders headers) {
        RouteController.LOGGER.info("[getRouteById][Query route by id][RouteId: {}]", routeId);
        return ok(routeService.getRouteById(routeId, headers));
    }

    @PostMapping(path = "/routes/byIds", produces = "application/x-protobuf")
    public HttpEntity<byte[]> queryByIds(@RequestBody List<String> routeIds, @RequestHeader HttpHeaders headers) {
        LOGGER.info("[getRouteByIds][Query routes by ids][RouteIds: {}]", routeIds);

        Response<List<Route>> response = routeService.getRouteByIds(routeIds, headers);

        // Convert the data part (list of routes) to Protocol Buffers format
        List<RouteProto.Route> routeProtos = response.getData().stream()
                .map(Route::toProto)
                .collect(Collectors.toList());

        // Build a Protocol Buffers response message containing the status, message, and data
        RouteProto.ResponseMessage.Builder responseMessageBuilder = RouteProto.ResponseMessage.newBuilder()
                .setStatus(response.getStatus())
                .setMsg(response.getMsg())
                .addAllRoutes(routeProtos);

        // Serialize the response message to bytes
        byte[] responseBytes = responseMessageBuilder.build().toByteArray();

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.parseMediaType("application/x-protobuf"));
        responseHeaders.setContentLength(responseBytes.length);

        return new HttpEntity<>(responseBytes, responseHeaders);
    }

    @GetMapping(path = "/routes", produces = "application/x-protobuf")
    public HttpEntity<byte[]> queryAll(@RequestHeader HttpHeaders headers) {
        RouteController.LOGGER.info("[getAllRoutes][Query all routes]");

        Response<List<Route>> response = routeService.getAllRoutes(headers);

        // Convert the data part (list of routes) to Protocol Buffers format
        List<RouteProto.Route> routeProtos = response.getData().stream()
                .map(Route::toProto)
                .collect(Collectors.toList());

        // Build a Protocol Buffers response message containing the status, message, and data
        RouteProto.ResponseMessage.Builder responseMessageBuilder = RouteProto.ResponseMessage.newBuilder()
                .setStatus(response.getStatus())
                .setMsg(response.getMsg())
                .addAllRoutes(routeProtos);

        // Serialize the response message to bytes
        byte[] responseBytes = responseMessageBuilder.build().toByteArray();

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.setContentType(MediaType.parseMediaType("application/x-protobuf"));
        responseHeaders.setContentLength(responseBytes.length);

        return new HttpEntity<>(responseBytes, responseHeaders);
    }



    @GetMapping(path = "/routes/{start}/{end}")
    public HttpEntity queryByStartAndTerminal(@PathVariable String start,
                                              @PathVariable String end,
                                              @RequestHeader HttpHeaders headers) {
        RouteController.LOGGER.info("[getRouteByStartAndEnd][Query routes][start: {}, end: {}]", start, end);
        return ok(routeService.getRouteByStartAndEnd(start, end, headers));
    }

}