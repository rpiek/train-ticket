package security.entity.security;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import javax.persistence.Table;
import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Entity;

import java.util.UUID;

/**
 * @author fdse
 */
@Data
@Table(name = "Security")
@Entity
@GenericGenerator(name = "jpa-uuid", strategy = "org.hibernate.id.UUIDGenerator")
@JsonIgnoreProperties(ignoreUnknown = true)
public class SecurityConfig {

    @Id
    @GeneratedValue(generator = "jpa-uuid")
    @Column(length = 36)
    private String id;

    private String name;

    private String value;

    private String description;

    public SecurityConfig() {
        //Default Constructor
    }

}
