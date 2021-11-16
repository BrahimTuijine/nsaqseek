import 'package:get/get.dart';
import 'package:nsaqseek/app/modules/services/model/service_model.dart';

class ServicesController extends GetxController {
  List<ServiceModel> service = [
    ServiceModel(
        image: 'assets/images/6@4x.png',
        page: "seggussions",
        text: "إقتراحات"),
    ServiceModel(
        image: 'assets/images/3@4x.png',
        page: "/demand",
        text: 'مطلب نافذ إلى المعلومة'),
    ServiceModel(
        image: 'assets/images/5@4x.png',
        page: "soon",
        text: "الكميون وين"),
    ServiceModel(
        image: 'assets/images/2@4x.png',
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
