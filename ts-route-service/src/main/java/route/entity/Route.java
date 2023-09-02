package route.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.models.auth.In;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

import java.util.List;
import java.util.UUID;

import route.entity.RouteProto; // Replace with the actual package of your generated code

@Entity
@Data
@JsonIgnoreProperties(ignoreUnknown = true)
@GenericGenerator(name = "jpa-uuid", strategy = "org.hibernate.id.UUIDGenerator")
public class Route {

    @Id
    @Column(length = 36)
    private String id;

    @ElementCollection(targetClass = String.class)
    @OrderColumn
    private List<String> stations;

    @ElementCollection(targetClass = Integer.class)
    @OrderColumn
    private List<Integer> distances;

    private String startStation;

    private String endStation;

    public Route(){
        this.id = UUID.randomUUID().toString();
    }

    public Route(RouteProto.Route routeProto) {
        this.id = routeProto.getId();
        this.stations = routeProto.getStationsList();
        this.distances = routeProto.getDistancesList();
        this.startStation = routeProto.getStartStation();
        this.endStation = routeProto.getEndStation();
    }

    public RouteProto.Route toProto() {
        return RouteProto.Route.newBuilder()
                .setId(id)
                .addAllStations(stations)
                .addAllDistances(distances)
                .setStartStation(startStation)
                .setEndStation(endStation)
                .build();
    }

    // Other methods as needed
}

