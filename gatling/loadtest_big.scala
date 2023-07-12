import io.gatling.core.Predef._
import io.gatling.http.Predef._
import scala.concurrent.duration._
import scala.io.Source
import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.ObjectMapper
import scala.collection.JavaConverters._

class LoadTestBig extends Simulation {
  val httpConf1 = http.baseUrl("http://localhost:12346")
  val httpConf2 = http.baseUrl("http://localhost:14568")
  val objectMapper = new ObjectMapper()

  val tripsJson = Source.fromFile("trips.json").mkString
  val trips = objectMapper.readValue(tripsJson, classOf[Array[JsonNode]]).toList
  val circularTrips = Iterator.continually(trips).flatten
  val circularFeeder = Iterator.continually(Map("trip" -> circularTrips.next()))

  val idsJson = Source.fromFile("accountIds.json").mkString
  val ids = objectMapper.readValue(idsJson, classOf[Array[JsonNode]]).toList
  val circularIds = Iterator.continually(ids).flatten
  val circularFeederIds = Iterator.continually(Map("id" -> circularTrips.next()))

  val foodsJson = Source.fromFile("foods.json").mkString
  val foods = objectMapper.readValue(foodsJson, classOf[Array[JsonNode]]).toList
  val circularFoods = Iterator.continually(foods).flatten
  val circularFeederFoods = Iterator.continually(Map("food" -> circularFoods.next()))

  val scn1 = scenario("Find ticket")
    .feed(circularFeeder)
    .exec(session => {
      val trip = session("trip").as[JsonNode]
      val startPlace = Option(trip.get("start_station_name")).map(_.asText()).getOrElse("")
      val endPlace = Option(trip.get("stations_name")).map(_.asText()).getOrElse("")
      session
        .set("startPlace", startPlace)
        .set("endPlace", endPlace)
    })
    .exec(http("Find ticket")
      .post("/api/v1/travelservice/trips/left")
      .header("Content-Type", "application/json")
      .body(StringBody("""{"startPlace": "${startPlace}", "endPlace": "${endPlace}", "departureTime": "2030-04-20 02:01:00"}"""))
      .check(
        bodyString.saveAs("responseBody"), // Save the response body as a string
        jsonPath("$..tripId").exists
      )
    )

  val requestBody = """{"accountId":"${accountId}","contactsId":"a68cc873-c05b-4245-9395-831838e0a9f4","tripId":"${tripId}","seatType":"2","date":"2024-08-16","from":"${from}","to":"${to}","assurance":"0","foodType":"${foodType}","stationName":"${terminalStation}","storeName":"${storeName}","foodName":"${foodName}","foodPrice":"${foodPrice}","handleDate":"2023-10-13","consigneeName":"Sheldon","consigneePhone":"555-555-5555","consigneeWeight":30,"isWithin":false}"""

  val scn2 = scenario("Order ticket")
    .feed(circularFeeder)
    .feed(circularFeederIds)
    .feed(circularFeederFoods)
    .exec(session => {
      val trip = session("trip").as[JsonNode]
      val food = session("food").as[JsonNode]
      val id = session("id").as[JsonNode]
      val tripId = "D" + Option(trip.get("number")).map(_.asText()).getOrElse("")
      val from = Option(trip.get("start_station_name")).map(_.asText()).getOrElse("")
      val to = Option(trip.get("stations_name")).map(_.asText()).getOrElse("")
      val terminalStation =  Option(trip.get("terminal_station_name")).map(_.asText()).getOrElse("")
      val foodName = Option(food.get("food_name")).map(_.asText()).getOrElse("")
      val storeName = Option(food.get("store_name")).map(_.asText()).getOrElse("")
      val foodPrice = Option(food.get("food_price")).map(_.asText()).getOrElse("")
      val foodType = Option(food.get("food_type")).map(_.asText()).getOrElse("")
      val accountId = Option(id.get("id")).map(_.asText()).getOrElse("")
      session
        .set("tripId", tripId)
        .set("from", from)
        .set("to", to)
        .set("terminalStation", terminalStation)
        .set("accountId", accountId)
        .set("foodName", foodName)
        .set("storeName", storeName)
        .set("foodPrice", foodPrice)
        .set("foodType", foodType)
    })
    .exec(http("Order ticket")
      .post("/api/v1/preserveservice/preserve")
      .body(StringBody(requestBody)).asJson
      .check(
      jmesPath("msg").is("Success."),
    )  
    )

  
val scn3 = scenario("Find ticket warmup")
  .feed(circularFeeder)
  .exec(session => {
    val trip = session("trip").as[JsonNode]
    val startPlace = Option(trip.get("start_station_name")).map(_.asText()).getOrElse("")
    val endPlace = Option(trip.get("stations_name")).map(_.asText()).getOrElse("")
    session
      .set("startPlace", startPlace)
      .set("endPlace", endPlace)
  })
  .exec(http("Find ticket warmup")
    .post("/api/v1/travelservice/trips/left")
    .header("Content-Type", "application/json")
    .body(StringBody("""{"startPlace": "${startPlace}", "endPlace": "${endPlace}", "departureTime": "2030-04-20 02:01:00"}"""))
    .check(
      bodyString.saveAs("responseBody"), // Save the response body as a string
      jsonPath("$..tripId").exists
    )
  )


  val scn4 = scenario("Order ticket warmup")
    .feed(circularFeeder)
    .feed(circularFeederIds)
    .feed(circularFeederFoods)
    .exec(session => {
      val trip = session("trip").as[JsonNode]
      val food = session("food").as[JsonNode]
      val id = session("id").as[JsonNode]
      val tripId = "D" + Option(trip.get("number")).map(_.asText()).getOrElse("")
      val from = Option(trip.get("start_station_name")).map(_.asText()).getOrElse("")
      val to = Option(trip.get("stations_name")).map(_.asText()).getOrElse("")
      val terminalStation =  Option(trip.get("terminal_station_name")).map(_.asText()).getOrElse("")
      val foodName = Option(food.get("food_name")).map(_.asText()).getOrElse("")
      val storeName = Option(food.get("store_name")).map(_.asText()).getOrElse("")
      val foodPrice = Option(food.get("food_price")).map(_.asText()).getOrElse("")
      val foodType = Option(food.get("food_type")).map(_.asText()).getOrElse("")
      val accountId = Option(id.get("id")).map(_.asText()).getOrElse("")
      session
        .set("tripId", tripId)
        .set("from", from)
        .set("to", to)
        .set("terminalStation", terminalStation)
        .set("accountId", accountId)
        .set("foodName", foodName)
        .set("storeName", storeName)
        .set("foodPrice", foodPrice)
        .set("foodType", foodType)
    })
    .exec(http("Order ticket warmup")
      .post("/api/v1/preserveservice/preserve")
      .body(StringBody(requestBody)).asJson
      .check(
      jmesPath("msg").is("Success."),
    )  
    )

  setUp(
    scn3.inject(
      rampUsersPerSec(4) to 22 during (310 seconds),
      constantUsersPerSec(22) during (90 seconds)
    ).protocols(httpConf1),
    scn4.inject(
      rampUsersPerSec(2) to 11 during (310 seconds),
      constantUsersPerSec(11) during (90 seconds)
    ).protocols(httpConf2) 
  .andThen(
    scn1.inject(constantUsersPerSec(22) during (5 minutes)).protocols(httpConf1),
    scn2.inject(constantUsersPerSec(11) during (5 minutes)).protocols(httpConf2)
  )
  )
}
