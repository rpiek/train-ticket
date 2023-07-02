package travel.repository;

import edu.fudan.common.entity.TripId;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import travel.entity.Trip;

import java.util.ArrayList;

/**
 * @author fdse
 */
@Repository
public interface TripRepository extends CrudRepository<Trip, TripId> {

    @NewSpan("databaseRead")
    Trip findByTripId(TripId tripId);

    @NewSpan("databaseWrite")
    void deleteByTripId(TripId tripId);

    @NewSpan("databaseRead")
    @Override
    ArrayList<Trip>  findAll();

    @NewSpan("databaseRead")
    ArrayList<Trip> findByRouteId(String routeId);

    @NewSpan("databaseWrite")
    @Override
    <S extends Trip> S save(S entity);

    @NewSpan("databaseWrite")
    @Override
    <S extends Trip> Iterable<S> saveAll(Iterable<S> var1);

}