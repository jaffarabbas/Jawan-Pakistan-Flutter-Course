// ignore_for_file: non_constant_identifier_names, file_names

class Datamap {
  static DataSource() {
    return {
      "slider": [
        {
          "productId": 0,
          "productImage": 'images/p1.png',
          "productName": 'Shoes',
          "productCount": 4,
        },
        {
          "productId": 1,
          "productImage": 'images/xt3.png',
          "productName": 'T-Shirt',
          "productCount": 4,
        },
        {
          "prodctId": 2,
          "productImage": 'images/j2.png',
          "productName": 'Jeans',
          "productCount": 4,
        },
        {
          "productId": 4,
          "productImage": 'images/s3.png',
          "productName": 'Suots',
          "productCount": 4,
        },
      ],
      "items": [
        {
          "productId": 0,
          "productImage": 'images/p1.png',
          "productName": 'Men`s\nFuelSell Echo',
          "productPrice": 99.99,
          "isNew": false,
        },
        {
          "productId": 1,
          "productImage": 'images/p2.png',
          "productName": 'Men`s FuelSell\nRebel',
          "description":"",
          "productPrice": 129.99,
          "isNew": true,
        },
        {
          "productId": 2,
          "productImage": 'images/p3.png',
          "productName": 'Side blocks\n1200',
          "description":"",
          "productPrice": 139.99,
          "isNew": false,
          "isExclusive": true,
        }
      ],
      "cartList":[],
      "favourate":[]
    };
  }
}
