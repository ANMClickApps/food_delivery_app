class ProductModel {
  final String title;
  final String imagePath;
  final String number;
  final List<String> imageList;

  ProductModel({this.title, this.imagePath, this.number, this.imageList});
}

class Category {
  final String title;
  List<ProductModel> productList;

  Category({this.title, this.productList});
}

//Some data in future I will use Firebase
List<Category> categories = [
  Category(
    title: 'Foods',
    productList: [
      ProductModel(
          title: 'Veggie tomato mix',
          imagePath: 'assets/images/foods1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
      ProductModel(
          title: 'Spicy fish sauce',
          imagePath: 'assets/images/foods2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
    ],
  ),
  Category(
    title: 'Drinks',
    productList: [
      ProductModel(
          title: 'Wine',
          imagePath: 'assets/images/foods2.png',
          number: 'N1,900',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
      ProductModel(
          title: 'Coffee',
          imagePath: 'assets/images/foods1.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
    ],
  ),
  Category(
    title: 'Snack',
    productList: [
      ProductModel(
          title: 'Cookies',
          imagePath: 'assets/images/foods1.png',
          number: 'N1,900',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
      ProductModel(
          title: 'Cakes',
          imagePath: 'assets/images/foods2.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
    ],
  ),
  Category(
    title: 'Sauce',
    productList: [
      ProductModel(
          title: 'Espagnole sauce',
          imagePath: 'assets/images/foods2.png',
          number: 'N1,900',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
      ProductModel(
          title: 'Tomato sauce',
          imagePath: 'assets/images/foods1.png',
          number: 'N2,300.99',
          imageList: [
            'assets/images/foods1.png',
            'assets/images/foods2.png',
          ]),
    ],
  ),
];
