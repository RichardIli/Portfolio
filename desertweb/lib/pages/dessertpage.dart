import 'package:desertweb/customwidgets/footer.dart';
import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:flutter/material.dart';

class Dessertpage extends StatelessWidget {
  const Dessertpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              const Navbar(),
              const ColdAndHot(
                image:
                    'https://images.pexels.com/photos/3523148/pexels-photo-3523148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                text: 'Cold Desserts',
              ),
              Container(
                padding: const EdgeInsets.all(100.0),
                color: Colors.transparent,
                height: 700,
                width: double.infinity,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: const [
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
                      productname: "Strawberry Ice Cream",
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/5946966/pexels-photo-5946966.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Macha Latte & Sweet Pie',
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/2144112/pexels-photo-2144112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Cake?',
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/6341572/pexels-photo-6341572.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Chocolate Cake',
                      price: '\$1.23',
                    ),
                  ],
                ),
              ),
              const ColdAndHot(
                image:
                    'https://images.pexels.com/photos/2067422/pexels-photo-2067422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                text: 'Hot Desserts',
              ),
              Container(
                padding: const EdgeInsets.all(100.0),
                color: Colors.transparent,
                height: 700,
                width: double.infinity,
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: const [
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/239584/pexels-photo-239584.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: "Melted Hot Chocolate",
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/808941/pexels-photo-808941.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Macaroons',
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/1346382/pexels-photo-1346382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Raspberry Pie',
                      price: '\$1.23',
                    ),
                    ProductContainer(
                      imagelink:
                          'https://images.pexels.com/photos/301972/pexels-photo-301972.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      productname: 'Chocolate Chip Cookies',
                      price: '\$1.23',
                    ),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    required this.imagelink,
    required this.productname,
    required this.price,
  });
  final String imagelink, productname, price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          imagelink,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        Text(
          productname,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          price,
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 20,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            side: MaterialStateProperty.all<BorderSide>(
              const BorderSide(
                color: Colors.yellow,
                width: 2,
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.all(0),
            ),
          ),
          child: const Text(
            'Buy',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}

class ColdAndHot extends StatelessWidget {
  const ColdAndHot({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 100,
        right: 100,
      ),
      child: SizedBox(
        height: 500,
        width: double.infinity,
        child: Stack(
          children: [
            Image.network(
              image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
