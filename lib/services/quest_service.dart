import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../api/api.dart';
import '../api/api_end_points.dart';
import '../models/quest.dart';

class QuestService {
  static var client = http.Client();
  static Future<List<Quest>?> fetchQuestFeatureData(int areaId,int language) async {
    // WelcomeController homeController = Get.find<WelcomeController>();
    var response = await http.get(
        Uri.parse('https://citytourist.azurewebsites.net/api/v1/quests?AreaId=${areaId}&language=${language}'),
        headers: {
          "Accept": "application/json",
          "content-type": "application/json",
           'Authorization': 'Bearer ' + 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoiY3VvbmduaHRzZTE0MDgwNUBmcHQuZWR1LnZuIiwianRpIjoiMzQ0NzNkMDItNDliNi00NjI0LWI4NGYtODAxYzBiYzZhMGI0IiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoiY3VvbmduaHRzZTE0MDgwNUBmcHQuZWR1LnZuIiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9leHBpcmF0aW9uIjoiMDcvMTIvMjAyMiAxNDoyMzo0NyIsImV4cCI6MTY1NzYzNTgyNywiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NzIxNSIsImF1ZCI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTIxNSJ9.0paBqANcZyuovkGl2NfHC0RCTuBpytbXjIFkMcHy0nc'
        });
    print("fetchQuestFeatureData Status_code: " '${response.statusCode}');
    // if (response.statusCode == 200) {
    Map data = jsonDecode(response.body);
    // Iterable list = dbc;
    Iterable list = data['data'];
    // Iterable list = json.decode(jsonString);
    // Iterable list = [
    //   {
    //     "id": 9,
    //     "title": "Quest 1",
    //     "description":
    //         "Quần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng. Vùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất thường được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm. Hầu hết điểm tham quan, vui chơi hút khách nằm ở nam đảoQuần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng. Vùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất thường được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm. Hầu hết điểm tham quan, vui chơi hút khách nằm ở nam đảoQuần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng. Vùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất thường được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm. Hầu hết điểm tham quan, vui chơi hút khách nằm ở nam đảoQuần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng. Vùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất thường được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm. Hầu hết điểm tham quan, vui chơi hút khách nằm ở nam đảoQuần đảo Phú Quốc nằm trong vịnh Thái Lan, cách TP HCM khoảng 400 km về hướng tây. Nơi đây thu hút du khách trong và ngoài nước bởi các loại hình du lịch đa dạng, với tài nguyên biển, đảo phong phú; hệ sinh thái rừng, biển đa dạng. Vùng biển Phú Quốc có 22 hòn đảo lớn, nhỏ, tổng diện tích khoảng 589,23 km2. Trong đó, đảo Phú Quốc lớn nhất thường được chia thành bắc đảo và nam đảo. Thị trấn Dương Đông nằm ở trung tâm. Hầu hết điểm tham quan, vui chơi hút khách nằm ở nam đảo",
    //     "price": 120000,
    //     "imagePath":
    //         'https://statics.vntrip.vn/data-v2/data-guide/img_content/1470302452_anh-5.jpg',
    //     "estimatedTime": "120",
    //     "estimatedDistance": "20",
    //     "availableTime": "2022-05-03T14:26:57.88",
    //     "createdDate": "2022-05-03T14:26:57.88",
    //     "updatedDate": "2022-05-03T14:26:57.88",
    //     "status": "ok",
    //     "questTypeId": 1,
    //     "questOwnerId": 2,
    //     "areaId": 3
    //   },
    //   {
    //     "id": 10,
    //     "title": "Quest 2",
    //     "description": "Đây là Description quest 2",
    //     "price": 110000,
    //     "imagePath":
    //         'https://statics.vntrip.vn/data-v2/data-guide/img_content/1470302452_anh-5.jpg',
    //     "estimatedTime": "100",
    //     "estimatedDistance": "2",
    //     "availableTime": "2022-05-03T13:29:19.9",
    //     "createdDate": "2022-05-03T13:29:19.9",
    //     "updatedDate": "2022-05-03T13:29:19.9",
    //     "status": "string",
    //     "questTypeId": 1,
    //     "questOwnerId": 2,
    //     "areaId": 3
    //   }
    // ];
    final bookingsAccept = list.cast<Map<String, dynamic>>();
    final listOfBookings_Accept = await bookingsAccept.map<Quest>((json) {
      return Quest.fromJson(json);
    }).toList();
    // print('object');
    return listOfBookings_Accept;
    // }
  }
  static Future<List<Quest>?> fetchQuestFeatureDataV2(String name) async {
    // WelcomeController homeController = Get.find<WelcomeController>();
    var response = await http.get(
        Uri.parse('https://citytourist.azurewebsites.net/api/v1/quests?Name=${name}&language=0'),
        headers: {
          "Accept": "application/json",
          "content-type": "application/json"
        });
    print("fetchQuestFeatureDataV2 - 79 questService.dart: " '${response.statusCode}');
    // if (response.statusCode == 200) {
    Map data = jsonDecode(response.body);
    // Iterable list = dbc;
    Iterable list = data['data'];
   
    final bookingsAccept = list.cast<Map<String, dynamic>>();
    final listOfBookings_Accept = await bookingsAccept.map<Quest>((json) {
      return Quest.fromJson(json);
    }).toList();
    // print('object');
    return listOfBookings_Accept;
    // }
  }

  static Future<List<Quest>?> fetchPuQuestFeatureData(
      String customerId, var language) async {
    var lang = 0;
    if (language == true) {
      lang = 1;
    }
    print(language.toString());
    var response = await http.get(
        Uri.parse(Api.baseUrl +
            ApiEndPoints.getCustomerQuestByCustomerId +
            customerId),
        headers: {"Content-Type": "application/json"});
    print(Api.baseUrl +
        ApiEndPoints.getCustomerQuestByCustomerId +
        customerId +
        "?language=" +
        lang.toString());
    if (response.statusCode == 200) {
      List<Quest> listQuest = new List.empty(growable: true);
      // print("OKkkkkkkkkkkkkkkkkkkkkk");
      // var data = json.decode(response.body);
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["data"];
      for (var element in data) {
        var response2 = await http.get(
            Uri.parse(Api.baseUrl +
                ApiEndPoints.getQuestById +
                element["questId"].toString() +
                "?language=" +
                lang.toString()),
            headers: {"Content-Type": "application/json"});
        print(Api.baseUrl +
            ApiEndPoints.getQuestById +
            element["questId"].toString());
        if (response2.statusCode == 200 && element["isFinished"] == false) {
          var responseData2 = json.decode(response2.body);
          Quest quest = Quest.fromJson(responseData2["data"]);
          if (element["createdDate"] != null) {
            // quest.createdDate = DateTime.tryParse(element["createdDate"])!;
          }
          listQuest.add(quest);
          print(quest.description);
        }
      }
      // print(data);
      return Future<List<Quest>>.value(listQuest);
    }
    return Future<List<Quest>>.value(null);
  }

  static Future<List<Quest>?> fetchPlayedQuestFeatureData(
      String customerId) async {
    var response = await http.get(
        Uri.parse(Api.baseUrl +
            ApiEndPoints.getCustomerQuestByCustomerId +
            customerId),
        headers: {"Content-Type": "application/json"});
    print(Api.baseUrl + ApiEndPoints.getSuggestion + customerId);
    if (response.statusCode == 200) {
      List<Quest> listQuest = new List.empty(growable: true);
      // print("OKkkkkkkkkkkkkkkkkkkkkk");
      // var data = json.decode(response.body);
      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> data = map["data"];
      for (var element in data) {
        var response2 = await http.get(
            Uri.parse(Api.baseUrl +
                ApiEndPoints.getQuestById +
                element["questId"].toString()),
            headers: {"Content-Type": "application/json"});
        print(Api.baseUrl +
            ApiEndPoints.getQuestById +
            element["questId"].toString());
        if (response2.statusCode == 200 && element["isFinished"] == true) {
          var responseData2 = json.decode(response2.body);
          Quest quest = Quest.fromJson(responseData2["data"]);
          if (element["createdDate"] != null) {
            // quest.createdDate = DateTime.tryParse(element["createdDate"])!;
          }
          listQuest.add(quest);
          // print(quest.createdDate);
        }
      }
      // print(data);
      return Future<List<Quest>>.value(listQuest);
    }
    return Future<List<Quest>>.value(null);
  }

  static Future<Quest?> fetchQuestDetail(String questId, var language) async {
    // var lang = 0;
    // if (language == true) {
    //   lang = 1;
    // }
    // print(language.toString());
    var response = await http.get(
        Uri.parse(Api.baseUrl +
            ApiEndPoints.getQuestById +
            questId +
            "?language=" +
            language.toString()),
        headers: {"Content-Type": "application/json"});
    // print(Api.baseUrl +
    //     ApiEndPoints.getQuestById +
    //     questId +
    //     "?language=" +
    //     language.toString());
    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      Quest quest = Quest.fromJson(responseData["data"]);
      print(quest.description);
      return quest;
    }
    return null;
  }
}