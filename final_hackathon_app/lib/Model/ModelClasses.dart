class ProductModel {
  final String pid, title, subTitle, image;

  final num rating, price;

  final bool isAssets;
  late bool isFavourite;

  final List<dynamic> tags;

  ProductModel({
    required this.pid,
    required this.rating,
    required this.price,
    required this.isAssets,
    required this.title,
    required this.image,
    required this.subTitle,
    required this.isFavourite,
    required this.tags,
  });
}

class ProductDetailsModel {
  final num afterPrice;

  final String desciption, pid;

  final List<num> avialableColors, avialableSize;

  final List<dynamic> imagesList;

  ProductDetailsModel(
      {required this.afterPrice,
      required this.pid,
      required this.desciption,
      required this.avialableColors,
      required this.avialableSize,
      required this.imagesList});
}

class UserInformation {
  String name, image, email, uid, id;
  late String cartsId, favouriteId, addressID;

  UserInformation({
    required this.uid,
    required this.id,
    required this.name,
    required this.email,
    required this.image,
  });
}
