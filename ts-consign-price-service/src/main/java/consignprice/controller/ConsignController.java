package consignprice.controller;

import static org.springframework.http.ResponseEntity.ok;

import consignprice.entity.ConsignRecord;
import consignprice.repository.ConsignRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/consign")
public class ConsignController {

    @Autowired
    ConsignRepository consignRepository;

    @PostMapping()
    public HttpEntity addConsignRecord(@RequestBody ConsignRecord consignRecord,
                                       @RequestHeader HttpHeaders headers) {
        ConsignRecord consignRecord1 = consignRepository.save(consignRecord);
        return ok(consignRecord1);
    }

    @GetMapping(value = "/{id}")
    public HttpEntity findConsignRecordById(@PathVariable("id") String id, @RequestHeader HttpHeaders headers) {
        return ok(consignRepository.findById(id));
    }

    @GetMapping(value = "/account/{accountId}")
    public HttpEntity findConsignRecordByAccountId(@PathVariable("accountId") String accountId, @RequestHeader HttpHeaders headers) {
        return ok(consignRepository.findByAccountId(accountId));
    }

    @GetMapping(value = "/order/{orderId}")
    public HttpEntity findConsignRecordByOrderId(@PathVariable("orderId") String orderId, @RequestHeader HttpHeaders headers) {
        return ok(consignRepository.findByOrderId(orderId));
    }

    @GetMapping(value = "/consignee/{consignee}")
    public HttpEntity findConsignRecordByConsignee(@PathVariable("consignee") String consignee, @RequestHeader HttpHeaders headers) {
        return ok(consignRepository.findByConsignee(consignee));
    }

}
