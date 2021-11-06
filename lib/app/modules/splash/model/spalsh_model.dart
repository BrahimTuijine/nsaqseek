class OnboardingContent {
  final String? title;
  final String? image;
  final String? discription;

  OnboardingContent({this.title, this.image, this.discription});
}

List<OnboardingContent> onBoarding = [
  OnboardingContent(
      title: "seekاجا نسق",
      image: "assets/images/my_logo.png",
      discription: "توفرلك خدمات البلدية"),
  OnboardingContent(
      title: "أضمن حقك",
      image: "assets/images/iconCardRequestANewService@3x.png",
      discription:
          "ماكش وحدك معك الفصل 32 من الدستور والمادة 19 من الاعلان العالمي لحقوق الانسان إلي يضمنولك حقك"),
  OnboardingContent(
      title: "استنى جديدنا",
      image: "assets/images/contactUs1@3x.png",
      discription: "تمتع بخدمت مطلب النفاذ إلى المعلومة واستنى برشى جديد")
];