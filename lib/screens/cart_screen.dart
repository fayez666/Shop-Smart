import 'package:flutter/material.dart';
import 'package:shopsmart_users/services/assets_manager.dart';
import 'package:shopsmart_users/widgets/empty_bag.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBag(
        imagePath: AssetsManager.shoppingBasket,
        title: 'Your Cart is empty',
        subtitle:
            'Looks like you haven\'t added anything yet to your cart go ahead and start shopping to add items to your cart',
        buttonText: 'Start Shopping',
      ),
    );
  }
}
