class SliderPromo {
  final String title, image, subTitle;
  final String button;
  final bool isAssets;

  late bool isPreveiw;

  SliderPromo(
      {required this.isAssets,
      required this.title,
      required this.image,
      required this.subTitle,
      required this.isPreveiw,
      this.button = "Shop Now"});

  SliderPromo.second({
    required this.isAssets,
    required this.title,
    required this.button,
    required this.image,
    required this.subTitle,
    required this.isPreveiw,
  });
}

SliderPromo slider = SliderPromo(
    isAssets: true,
    image: "assets/images/Sample.png",
    isPreveiw: false,
    subTitle: "25% off in \nour All product",
    title: "Halloweeen Offer",
  );

List<SliderPromo> sliderList = [slider,slider,slider,]; 
