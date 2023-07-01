package config.repository;

import config.entity.Config;
import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * @author fdse
 */
public interface ConfigRepository extends CrudRepository<Config, String> {

    /**
     * find by name
     *
     * @param name name
     * @return Config
     */
    @NewSpan("databaseRead")
    Config findByName(String name);

    /**
     * find all
     *
     * @return List<Config>
     */
    @NewSpan("databaseRead")
    @Override
    List<Config> findAll();

    /**
     * delete by name
     *
     * @param name name
     * @return null
     */
    @NewSpan("databaseWrite")
    void deleteByName(String name);

    @NewSpan("databaseWrite")
    @Override
    <S extends Config> S save(S entity);

}
