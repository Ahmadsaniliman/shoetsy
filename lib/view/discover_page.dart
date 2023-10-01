import 'package:flutter/material.dart';
import 'package:shoety/model/shoe.dart';
import 'package:shoety/view/product_details_page.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      'All',
      'Nike',
      'Jordan',
      'Adidas',
      'Reebook',
    ];
    int _index = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Discover',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Image.asset('assets/images/cart.png'),
              ],
            ),
            SizedBox(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    categories.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = index;
                        });
                      },
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 15.0,
                          color: index == _index
                              ? Colors.black
                              : Colors.black.withOpacity(0.4),
                          fontWeight: index == _index ? FontWeight.bold : null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: 585,
                  child: GridView.count(
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    children: [
                      ...List.generate(
                        shoes.length,
                        (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailsScreen(shoe: shoes[index]),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(),
                            ),
                            height: 224,
                            width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(shoes[index].type),
                                      Image.asset(shoes[index].image),
                                    ],
                                  ),
                                ),
                                Text(shoes[index].name,
                                    style: const TextStyle(fontSize: 10)),
                                Text(shoes[index].star,
                                    style: const TextStyle(fontSize: 10)),
                                Text(shoes[index].price,
                                    style: TextStyle(fontSize: 10)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 100,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('fliterscreen');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      height: 40,
                      width: 119,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/setting-4.png'),
                          const Text(
                            'Filter',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
