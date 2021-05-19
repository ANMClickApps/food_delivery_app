import 'package:flutter/material.dart';
import 'package:food_delivery_app/colors_style.dart';
import 'package:food_delivery_app/models/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsScreen({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () => print('On tap favorite icon button'),
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              ImageBloc(product: product),
              SizedBox(height: 44.0),
              Text(
                product.title,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                product.number,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: BrandColors.colorPrimary),
              ),
              Container(
                width: double.infinity,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery info',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(height: 45.0),
                      Text(
                        'Return policy',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => print('On tap button Add to cart'),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Text('Add to cart'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageBloc extends StatefulWidget {
  final ProductModel product;
  ImageBloc({Key key, this.product}) : super(key: key);

  @override
  _ImageBlocState createState() => _ImageBlocState();
}

class _ImageBlocState extends State<ImageBloc> {
  int currentPage = 0;

  Widget updateIndicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.product.imageList.map((item) {
        var index = widget.product.imageList.indexOf(item);
        return Container(
          height: 8.0,
          width: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index
                ? BrandColors.colorPrimary
                : Color(0xFFC4C4C4),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250.0,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 242.0,
                  child: Image.asset(
                    widget.product.imageList[index],
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
            },
            itemCount: widget.product.imageList.length,
            controller: PageController(initialPage: currentPage),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
