import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shopsmart_users/screens/cart/bottom_check_out.dart';
import 'package:shopsmart_users/services/assets_manager.dart';
import 'package:shopsmart_users/widgets/empty_bag.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return isEmpty
        ? Scaffold(
            body: EmptyBag(
              imagePath: AssetsManager.shoppingBasket,
              title: 'Your Cart is empty',
              subtitle:
                  'Looks like you haven\'t added anything yet to your cart go ahead and start shopping to add items to your cart',
              buttonText: 'Start Shopping',
            ),
          )
        : Scaffold(
          bottomSheet: const CartBottomCheckout(),
            appBar: AppBar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: const Text('Cart (4)'),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.shoppingCart),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: FancyShimmerImage(
                                imageUrl:
                                    'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                                width: size.width * 0.3,
                                height: size.width * 0.3,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.5,
                                        child: Text(
                                          'Title' * 10,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.clear),
                                              color: Colors.red,
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon:
                                                  const Icon(IconlyLight.heart),
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Price: \$200',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          OutlinedButton.icon(
                                            onPressed: () {},
                                            icon: const Icon(
                                                IconlyLight.arrowDown2),
                                            label: const Text('Qty: 1'),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '\$200',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
