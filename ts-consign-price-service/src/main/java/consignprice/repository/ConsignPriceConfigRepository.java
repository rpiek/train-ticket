package consignprice.repository;

import consignprice.entity.ConsignPrice;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * @author fdse
 */
@Repository
public interface ConsignPriceConfigRepository extends CrudRepository<ConsignPrice, String> {

    /**
     * find by index
     *
     * @param index index
     * @return ConsignPrice
     */
//    @Query("{ 'index': ?0 }")
    @NewSpan("database")
    ConsignPrice findByIndex(int index);

    @NewSpan("database")
    @Override
    <S extends ConsignPrice> S save(S entity);

}
