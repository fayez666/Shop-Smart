import 'package:flutter/material.dart';

class CartBottomCheckout extends StatelessWidget {
  const CartBottomCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            Text("Total (6 products/5 Items)"),
            Text(
              "16.99",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        )
      ],
    );
  }
}
