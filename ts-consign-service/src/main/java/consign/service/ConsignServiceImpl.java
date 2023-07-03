package consign.service;

import consign.entity.ConsignRecord;
import consign.entity.Consign;
import edu.fudan.common.util.Response;
import java.util.Objects;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.UUID;

/**
 * @author fdse
 */
@Service
public class ConsignServiceImpl implements ConsignService {

    @Autowired
    RestTemplate restTemplate;

    @Autowired
    private DiscoveryClient discoveryClient;

    private static final Logger LOGGER = LoggerFactory.getLogger(ConsignServiceImpl.class);

    private String getServiceUrl(String serviceName) {
        return "http://" + serviceName;
    }


    @Override
    public Response insertConsignRecord(Consign consignRequest, HttpHeaders headers) {
        ConsignServiceImpl.LOGGER.info("[insertConsignRecord][Insert Start][consignRequest.getOrderId: {}]", consignRequest.getOrderId());

        ConsignRecord consignRecord = new ConsignRecord();
        //Set the record attribute
        consignRecord.setId(UUID.randomUUID().toString());
        consignRecord.setOrderId(consignRequest.getOrderId().toString());
        consignRecord.setAccountId(consignRequest.getAccountId().toString());
        ConsignServiceImpl.LOGGER.info("[insertConsignRecord][Insert Info][handle date: {}, target date: {}]", consignRequest.getHandleDate(), consignRequest.getTargetDate());
        consignRecord.setHandleDate(consignRequest.getHandleDate());
        consignRecord.setTargetDate(consignRequest.getTargetDate());
        consignRecord.setFrom(consignRequest.getFrom());
        consignRecord.setTo(consignRequest.getTo());
        consignRecord.setConsignee(consignRequest.getConsignee());
        consignRecord.setPhone(consignRequest.getPhone());
        consignRecord.setWeight(consignRequest.getWeight());

        //get the price
        HttpEntity requestEntity = new HttpEntity(null, headers);
        String consign_price_service_url = getServiceUrl("ts-consign-price-service");
        ResponseEntity<Response<Double>> re = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consignpriceservice/consignprice/" + consignRequest.getWeight() + "/" + consignRequest.isWithin(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<Response<Double>>() {
                });
        consignRecord.setPrice(re.getBody().getData());

        LOGGER.info("[insertConsignRecord][SAVE consign info][consignRecord : {}]", consignRecord.toString());

        ResponseEntity<ConsignRecord> result = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign",
                HttpMethod.POST,
                new HttpEntity<>(consignRecord, headers),
                new ParameterizedTypeReference<ConsignRecord>() {
                });

        LOGGER.info("[insertConsignRecord][SAVE consign result][result: {}]", result.toString());
        return new Response<>(1, "You have consigned successfully! The price is " + result.getBody().getPrice(), result);
    }

    @Override
    public Response updateConsignRecord(Consign consignRequest, HttpHeaders headers) {
        ConsignServiceImpl.LOGGER.info("[updateConsignRecord][Update Start]");
        String consign_price_service_url = getServiceUrl("ts-consign-price-service");
        HttpEntity requestEntity = new HttpEntity<>(null, headers);

        ResponseEntity<ConsignRecord> consignRecord = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign/" + consignRequest.getId(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<ConsignRecord>() {
                });

        if (consignRecord.getBody() == null) {
            return insertConsignRecord(consignRequest, headers);
        }

        ResponseEntity<ConsignRecord> consignRecord2 = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign/" + consignRequest.getId(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<ConsignRecord>() {
                });

        ConsignRecord originalRecord = consignRecord2.getBody();
        originalRecord.setAccountId(consignRequest.getAccountId().toString());
        originalRecord.setHandleDate(consignRequest.getHandleDate());
        originalRecord.setTargetDate(consignRequest.getTargetDate());
        originalRecord.setFrom(consignRequest.getFrom());
        originalRecord.setTo(consignRequest.getTo());
        originalRecord.setConsignee(consignRequest.getConsignee());
        originalRecord.setPhone(consignRequest.getPhone());
        //Recalculate price
        if (originalRecord.getWeight() != consignRequest.getWeight()) {
            ResponseEntity<Response<Double>> re = restTemplate.exchange(
                    consign_price_service_url + ":16110/api/v1/consignpriceservice/consignprice/" + consignRequest.getWeight() + "/" + consignRequest.isWithin(),
                    HttpMethod.GET,
                    requestEntity,
                    new ParameterizedTypeReference<Response<Double>>() {
                    });

            originalRecord.setPrice(re.getBody().getData());
        } else {
            originalRecord.setPrice(originalRecord.getPrice());
        }
        originalRecord.setConsignee(consignRequest.getConsignee());
        originalRecord.setPhone(consignRequest.getPhone());
        originalRecord.setWeight(consignRequest.getWeight());

        ResponseEntity<ConsignRecord> res = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign",
                HttpMethod.POST,
                new HttpEntity<>(originalRecord, headers),
                new ParameterizedTypeReference<ConsignRecord>() {
                });

        return new Response<>(1, "Update consign success", originalRecord);
    }

    @Override
    public Response queryByAccountId(UUID accountId, HttpHeaders headers) {
        String consign_price_service_url = getServiceUrl("ts-consign-price-service");
        HttpEntity requestEntity = new HttpEntity<>(null, headers);

        ResponseEntity<List<ConsignRecord>> consignRecords = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign/account/" + accountId.toString(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<List<ConsignRecord>>() {
                });
        if (!Objects.requireNonNull(consignRecords.getBody()).isEmpty()) {
            return new Response<>(1, "Find consign by account id success", consignRecords);
        }else {
            LOGGER.warn("[queryByAccountId][No Content according to accountId][accountId: {}]", accountId);
            return new Response<>(0, "No Content according to accountId", null);
        }
    }

    @Override
    public Response queryByOrderId(UUID orderId, HttpHeaders headers) {
        String consign_price_service_url = getServiceUrl("ts-consign-price-service");
        HttpEntity requestEntity = new HttpEntity<>(null, headers);

        ResponseEntity<ConsignRecord> consignRecord = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign/order/" + orderId.toString(),
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<ConsignRecord>() {
                });

        if (consignRecord.getBody() != null) {
            return new Response<>(1, "Find consign by order id success", consignRecord.getBody());
        }else {
            LOGGER.warn("[queryByOrderId][No Content according to orderId][orderId: {}]", orderId);
            return new Response<>(0, "No Content according to order id", null);
        }
    }

    @Override
    public Response queryByConsignee(String consignee, HttpHeaders headers) {
        String consign_price_service_url = getServiceUrl("ts-consign-price-service");
        HttpEntity requestEntity = new HttpEntity<>(null, headers);

        ResponseEntity<List<ConsignRecord>> consignRecords = restTemplate.exchange(
                consign_price_service_url + ":16110/api/v1/consign/consignee/" + consignee,
                HttpMethod.GET,
                requestEntity,
                new ParameterizedTypeReference<List<ConsignRecord>>() {
                });

        if (!Objects.requireNonNull(consignRecords.getBody()).isEmpty()) {
            return new Response<>(1, "Find consign by consignee success", consignRecords);
        }else {
            LOGGER.warn("[queryByConsignee][No Content according to consignee][consignee: {}]", consignee);
            return new Response<>(0, "No Content according to consignee", null);
        }
    }
}
