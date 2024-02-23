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
              coldproducts(),
              const ColdAndHot(
                  image:
                      'https://images.pexels.com/photos/2067422/pexels-photo-2067422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  text: 'Hot Desserts'),
              hotproducts(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Padding hotproducts() {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: Column(
        children: [
          ProductRow(
            p1imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p1name: "suppoed tobe hot product",
            p1price: '\$1.23',
            p2imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p2name: 'suppoed tobe hot product',
            p2price: '\$1.45',
            p3imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p3name: 'suppoed tobe hot product',
            p3price: '\$1.67',
          ),
          ProductRow(
            p1imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p1name: "suppoed tobe hot product",
            p1price: '\$1.23',
            p2imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p2name: 'suppoed tobe hot product',
            p2price: '\$1.45',
            p3imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p3name: 'suppoed tobe hot product',
            p3price: '\$1.67',
          ),
        ],
      ),
    );
  }

  Padding coldproducts() {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: Column(
        children: [
          ProductRow(
            p1imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p1name: "Strawberry Ice Cream",
            p1price: '\$1.23',
            p2imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p2name: 'Strawberry Ice Cream ver.2',
            p2price: '\$1.45',
            p3imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p3name: 'Strawberry Ice Cream ver.3',
            p3price: '\$1.67',
          ),
          ProductRow(
            p1imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p1name: "Strawberry Ice Cream ver.4",
            p1price: '\$1.23',
            p2imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p2name: 'Strawberry Ice Cream ver.5',
            p2price: '\$1.45',
            p3imagelink:
                'https://images.pexels.com/photos/5060940/pexels-photo-5060940.jpeg',
            p3name: 'Strawberry Ice Cream ver.3',
            p3price: '\$1.67',
          ),
        ],
      ),
    );
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({
    super.key,
    required this.p1imagelink,
    required this.p1name,
    required this.p1price,
    required this.p2imagelink,
    required this.p2name,
    required this.p2price,
    required this.p3imagelink,
    required this.p3name,
    required this.p3price,
  });

  final String p1imagelink, p2imagelink, p3imagelink;
  final String p1name, p2name, p3name;
  final String p1price, p2price, p3price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ProductContainer(
          imagelink: p1imagelink,
          productname: p1name,
          price: p1price,
        ),
        ProductContainer(
          imagelink: p2imagelink,
          productname: p2name,
          price: p2price,
        ),
        ProductContainer(
          imagelink: p3imagelink,
          productname: p3name,
          price: p3price,
        ),
      ],
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
    return SizedBox(
      width: 300,
      height: 300,
      child: Expanded(
        child: Column(
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
        ),
      ),
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
