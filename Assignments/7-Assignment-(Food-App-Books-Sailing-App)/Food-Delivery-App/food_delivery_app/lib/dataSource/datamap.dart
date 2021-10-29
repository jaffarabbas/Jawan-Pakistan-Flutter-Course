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
        },
        {
          "name": "Spicy Chicken Noodles",
          "price": 7.9,
          "image": "assets/Images/roundImage2.png",
          "description": "With Extra Chicken",
          "rating": 5
        },
        {
          "name": "Spicy Cheese Pizza",
          "price": 9.9,
          "image": "assets/Images/roundImage3.png",
          "description": "With Extra Cheese",
          "rating": 6
        }
      ],
      "otherFoods":[
        {
          "name": "Chinnese Pizza",
          "price": 6.9,
          "image": "assets/Images/pizza.jpg",
          "description": "With Extra Souse",
          "rating": 6
        },
        {
          "name": "Japanies Sochie",
          "price": 8.9,
          "image": "assets/Images/japanese-restaurant.jpg",
          "description": "With Tuna",
          "rating": 6
        },
      ]
    };
  }
}
