import 'package:flutter/material.dart';
import 'package:laza_ecommerce_app/core/features/card_page_screen/widgets/card_item_widget.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CardItemWidget(
            cardHolder: "Mrh Raju",
            cardType: "Visa Classic",
            cardNumber: "5254 **** **** 7690",
            balance: "\$3,763.87",
          ),
        ),
      ),
    );
  }
}
