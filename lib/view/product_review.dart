import 'package:flutter/material.dart';
import 'package:shoety/model/review.dart';

class ProductReviewScreen extends StatefulWidget {
  const ProductReviewScreen({super.key});

  @override
  State<ProductReviewScreen> createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> starCat = [
      "All",
      "5 Star",
      "4 Star",
      "3 Star",
      "2 Star",
      "1 Star",
      "0 Star",
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('discoverscreen');
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const Text('Review(1045)'),
                Row(
                  children: [
                    Image.asset('assets/images/star.png'),
                    const Text('Star'),
                  ],
                ),
              ],
            ),
            //
            //
            //
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    5,
                    (index) => Text(
                      starCat[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            //
            SizedBox(
              height: 570,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(
                      reviews.length,
                      (index) => Container(
                        height: 95,
                        margin: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(reviews[index].image),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(height: 25),
                                Text(
                                  reviews[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset('assets/images/star.png'),
                                Text(
                                  reviews[index].text,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Text(
                              reviews[index].date,
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
