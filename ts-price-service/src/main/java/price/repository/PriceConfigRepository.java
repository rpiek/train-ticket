package price.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import price.entity.PriceConfig;
import java.util.List;
import java.util.Optional;

/**
 * @author fdse
 */
@Repository
public interface PriceConfigRepository extends CrudRepository<PriceConfig, String> {

    @NewSpan("database")
    @Override
    Optional<PriceConfig> findById(String id);

    @NewSpan("database")
    PriceConfig findByRouteIdAndTrainType(String routeId,String trainType);

    @NewSpan("database")
    @Query(value="SELECT * FROM price_config WHERE route_id IN ?1 AND train_type IN ?2", nativeQuery = true)
    List<PriceConfig> findByRouteIdsAndTrainTypes(List<String> routeIds, List<String> trainTypes);

    @NewSpan("database")
    @Override
    List<PriceConfig> findAll();

    @NewSpan("database")
    @Override
    <S extends PriceConfig> S save(S entity);

    @NewSpan("database")
    @Override
    void delete(PriceConfig entity);

}
