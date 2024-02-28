import 'package:flutter/material.dart';
import 'package:desertweb/customwidgets/header.dart';
import 'package:desertweb/customwidgets/navbar.dart';
import 'package:desertweb/customwidgets/footer.dart';

late double screenwidth;

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentwidth = MediaQuery.of(context).size.width;
    screenwidth = currentwidth;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Header(),
              const Navbar(),
              sizedbox1(),
              colddessertset(),
              hotcoldoption(),
              const Padding(
                padding: EdgeInsets.all(100),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Text(
                        'Food Lovers Say',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 50,
                        ),
                      ),
                      Divider(
                        thickness: 10,
                        color: Colors.transparent,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ExpertsComment(
                            comment:
                                '"The dessert is absolutely delicious, a perfect blend of flavors and textures that delights the taste buds."',
                            imageurl:
                                'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            name: 'Expert 1',
                          ),
                          ExpertsComment(
                            comment:
                                '"The dessert is absolutely delicious, a perfect blend of flavors and textures that delights the taste buds."',
                            imageurl:
                                'https://images.pexels.com/photos/14455016/pexels-photo-14455016.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            name: 'Expert 2',
                          ),
                          ExpertsComment(
                            comment:
                                '"The dessert is absolutely delicious, a perfect blend of flavors and textures that delights the taste buds."',
                            imageurl:
                                'https://images.pexels.com/photos/3778361/pexels-photo-3778361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                            name: 'Expert 3',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Padding hotcoldoption() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 100,
        right: 100,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Option(
              imagelink:
                  'https://images.pexels.com/photos/3523148/pexels-photo-3523148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              text: 'Cold Dessert',
            ),
            Option(
              imagelink:
                  'https://images.pexels.com/photos/2067422/pexels-photo-2067422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              text: 'Hot Dessert',
            ),
          ],
        ),
      ),
    );
  }

  Padding colddessertset() {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: SizedBox(
        child: Column(
          children: [
            const Text(
              'Cold Dessert Set',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 100,
                right: 100,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Expanded(
                    child: Text(
                      ' Transform your summer gatherings into unforgettable celebrations with our sensational Cold Dessert Set. Immerse yourself in a symphony of flavors and textures as you explore a curated selection of icy delights, from velvety gelatos to decadent sorbets. Crafted with premium ingredients and a passion for perfection, our Cold Dessert Set is the epitome of indulgence, promising to elevate your cooling moments with a burst of refreshment. Whether you are hosting a backyard barbecue or enjoying a quiet evening on the patio, let our collection of frozen treats turn every occasion into a sweet, memorable experience. Embrace the essence of summer with our Cold Dessert Set and savor the joy of chilling in style.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.network(
                      'https://media.istockphoto.com/id/936205852/photo/chocolate-ice-cream-in-a-glass-cup.webp?s=1024x1024&w=is&k=20&c=DMtLJ5P7v4zDMGlNgdvRsDWHecrGsfvIsbbCODfU4R0=',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox sizedbox1() {
    return SizedBox(
      width: double.infinity,
      height: 700,
      child: Stack(
        children: [
          Image.network(
            'https://images.pexels.com/photos/907142/pexels-photo-907142.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            width: double.infinity,
            fit: BoxFit
                .cover, //automatically crop the image to the size of its parrent
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100.0,
              right: 100.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Delicious Dessert \nSet The Right Mood',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
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
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(
                        250,
                        50,
                      ),
                    ),
                  ),
                  child: const Text(
                    'Order now',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ExpertsComment extends StatelessWidget {
  const ExpertsComment({
    super.key,
    required this.comment,
    required this.imageurl,
    required this.name,
  });

  final String comment, imageurl, name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
          side: BorderSide(
            color: Colors.grey,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ],
              ),
              Text(
                comment,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipOval(
                      child: Image.network(
                        imageurl,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({
    super.key,
    required this.imagelink,
    required this.text,
  });

  final String imagelink, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Image.network(
            imagelink,
            height: 300,
            width: 800,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.yellow, width: 2),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                    ),
                  ),
                  child: const Text(
                    'Learn more',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
