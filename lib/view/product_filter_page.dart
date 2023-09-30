import 'package:flutter/material.dart';

class ProductFilterScreen extends StatefulWidget {
  const ProductFilterScreen({super.key});

  @override
  State<ProductFilterScreen> createState() => _ProductFilterScreenState();
}

class _ProductFilterScreenState extends State<ProductFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 100.0),
                const Text('Filter'),
              ],
            ),
            //
            Container(
              height: 143,
              width: double.infinity,
              child: Column(
                children: [
                  const Text('Brands'),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Image.asset(''),
                      ),
                      const Text('Nike'),
                      const Text('100 items'),
                    ],
                  ),
                ],
              ),
            ),
            //
            //
            Column(
              children: [
                Container(
                  height: 112,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text('Price Range'),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black,
                                ),
                                child: Container(
                                  height: 18.0,
                                  width: 18.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 5,
                                width: 250,
                                color: Colors.black,
                              ),
                              Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black,
                                ),
                                child: Container(
                                  height: 18.0,
                                  width: 18.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$200'),
                              Text('\$750'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                //
                //
                Container(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text('Sort By'),
                      Row(
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Text('Most recent'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text('Gender'),
                      Row(
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: const Text('Man'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Text('Color'),
                      Row(
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  const Text('Black'),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //
                //
                //
                //
                Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(),
                      ),
                      child: const Text('Reset (4)'),
                    ),
                    Container(
                      height: 60.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(),
                        color: Colors.black,
                      ),
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
