package travel.repository;

import edu.fudan.common.entity.TripId;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import travel.entity.Trip;

import java.util.ArrayList;

/**
 * @author fdse
 */
@Repository
public interface TripRepository extends CrudRepository<Trip, TripId> {

    @NewSpan("database")
    Trip findByTripId(TripId tripId);

    @NewSpan("database")
    void deleteByTripId(TripId tripId);

    @NewSpan("database")
    @Override
    ArrayList<Trip>  findAll();

    @NewSpan("database")
    ArrayList<Trip> findByRouteId(String routeId);

    @NewSpan("database")
    @Override
    <S extends Trip> S save(S entity);

}