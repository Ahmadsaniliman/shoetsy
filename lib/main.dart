import 'package:flutter/material.dart';
import 'package:shoety/view/cart.dart';
import 'package:shoety/view/discover_page.dart';
import 'package:shoety/view/order_summary_page.dart';
import 'package:shoety/view/product_filter_page.dart';
import 'package:shoety/view/product_review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        'productreview': (context) => const ProductReviewScreen(),
        'discoverscreen': (context) => const DiscoverScreen(),
        'cartscreen': (context) => const CartScreen(),
        'ordersummary': (context) => const OrderSummaryScreen(),
        'fliterscreen': (context) => const ProductFilterScreen(),
      },
      home: const DiscoverScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
    );
  }
}
