import 'package:flutter/material.dart';
import 'package:shoety/model/shoe.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('discoverscreen');
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 120),
                const Text('Cart')
              ],
            ),
            const SizedBox(height: 25),
            Column(
              children: [
                ...List.generate(
                  3,
                  (index) => Dismissible(
                    key: GlobalKey(),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 15),
                      height: 95,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Image.asset(shoes[index].image, width: 100),
                          const SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(shoes[index].name),
                              Text(shoes[index].info),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(shoes[index].price),
                                  const SizedBox(width: 40),
                                  Row(
                                    children: [
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('-')),
                                      ),
                                      const SizedBox(width: 10),
                                      Text('1'),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(),
                                        ),
                                        child: const Center(child: Text('+')),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        height: 100,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              children: [
                Text('Grand Total'),
                Text(
                  '\$705.25',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('ordersummary');
              },
              child: Container(
                height: 60,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
