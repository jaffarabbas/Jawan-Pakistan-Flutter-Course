// ignore_for_file: non_constant_identifier_names

class Datamap {
  static DataSource() {
    return {
      "category": [
        {
          'flag': true,
          'itemName': 'All Food',
          'itemImage': 'assets/Images/roundImg1.png'
        },
        {
          'flag': false,
          'itemName': 'Shrimp',
          'itemImage': 'assets/Images/roundImg1.png'
        },
        {
          'flag': false,
          'itemName': 'Noodles',
          'itemImage': 'assets/Images/roundImage2.png'
        },
        {
          'flag': false,
          'itemName': 'Burger',
          'itemImage': 'assets/Images/baked-fries.jpg'
        },
      ],
      "favoriteFoods": [
        {
          "name": "Orignal Fried Shrimp",
          "price": 6.9,
          "image": "assets/Images/roundImg1.png",
          "description": "With Extra Souse",
          "rating": 6
        }
      ],
    };
  }
}
