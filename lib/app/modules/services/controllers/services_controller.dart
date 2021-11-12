import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/services/model/service_model.dart';

class ServicesController extends GetxController {
  List<ServiceModel> service = [
    ServiceModel(
        image: 'assets/images/iconCard60Maintenance@3x.png',
        page: "seggussions",
        text: "إقتراحات"),
    ServiceModel(
        image: 'assets/images/myrequest60@3x.png',
        page: "/demand",
        text: 'مطلب نفاذ للمعلومة'),
    ServiceModel(
        image: 'assets/images/iconServiceLocationGoogle@3x.png',
        page: "soon",
        text: "الكميون وين"),
    ServiceModel(
        image: 'assets/images/phone@3x.png',
        page: "soon",
        text: "اطلب البلدية"),
  ];

  List<ServiceModel> foundedService = [];

  @override
  void onInit() {
    foundedService = service;
    update();
    super.onInit();
  }

  onSearch(value) {
    foundedService =
        service.where((roudoud) => roudoud.text.contains(value)).toList();
    update();
  }
}
