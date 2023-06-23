package contacts.repository;

import org.springframework.cloud.sleuth.annotation.NewSpan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import contacts.entity.Contacts;

import java.util.*;

/**
 * @author fdse
 */
@Repository
public interface ContactsRepository extends CrudRepository<Contacts, String> {

    /**
     * find by id
     *
     * @param id id
     * @return Contacts
     */
    @NewSpan("database")
    Optional<Contacts> findById(String id);

    /**
     * find by account id
     *
     * @param accountId account id
     * @return ArrayList<Contacts>
     */
    @NewSpan("database")
//    @Query("{ 'accountId' : ?0 }")
    ArrayList<Contacts> findByAccountId(String accountId);

    /**
     * delete by id
     *
     * @param id id
     * @return null
     */
    @NewSpan("database")
    void deleteById(String id);

    /**
     * find all
     *
     * @return ArrayList<Contacts>
     */
    @Override
    @NewSpan("database")
    ArrayList<Contacts> findAll();

    @NewSpan("database")
    @Query(value="SELECT * FROM contacts WHERE account_id = ?1 AND document_number = ?2 AND document_type = ?3", nativeQuery = true)
    Contacts findByAccountIdAndDocumentTypeAndDocumentType(String account_id, String document_number, int document_type);

    @NewSpan("database")
    @Override
    <S extends Contacts> S save(S entity);
}
