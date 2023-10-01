import 'package:flutter/material.dart';
import 'package:shoety/model/brand.dart';

class ProductFilterScreen extends StatefulWidget {
  const ProductFilterScreen({super.key});

  @override
  State<ProductFilterScreen> createState() => _ProductFilterScreenState();
}

class _ProductFilterScreenState extends State<ProductFilterScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> sortBy = [
      'Most Recent',
      'Lowest Price',
      'Highest Price'
    ];
    final List<String> gender = ['Man', 'Woman', 'Unisex'];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('discoverscreen');
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 100.0),
                const Text('Filter'),
              ],
            ),
            //
            SizedBox(
              height: 143,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Brands',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ...List.generate(
                        brands.length,
                        (index) => Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Expanded(
                                  child: Image.asset(brands[index].image)),
                            ),
                            Text(
                              brands[index].name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(brands[index].items),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //
            //
            const SizedBox(height: 15),
            Column(
              children: [
                SizedBox(
                  height: 112,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Price Range',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 6, width: 75, color: Colors.grey),
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                    border: Border.all()),
                                child: Container(
                                  height: 15.0,
                                  width: 15,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                height: 5,
                                width: 100,
                                color: Colors.black,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black,
                                ),
                                child: Container(
                                  height: 15.0,
                                  width: 15.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                  height: 6, width: 75, color: Colors.grey),
                            ],
                          ),
                          //
                          const SizedBox(height: 10),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('\$200'),
                              Text('\$400',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('\$650',style:TextStyle(fontWeight:FontWeight.bold),),
                              Text('\$750'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sort By',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              padding: const EdgeInsets.all(15),
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all()),
                              child: Center(
                                child: Text(sortBy[index]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(
                            3,
                            (index) => Container(
                              height: 50,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(),
                              ),
                              child: Center(child: Text(gender[index])),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 86,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                const Text('Black'),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                const Text('Red'),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                const Text('Green'),
                              ],
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(),
                      ),
                      child: const Center(child: Text('Reset (4)')),
                    ),
                    Container(
                      height: 60.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
