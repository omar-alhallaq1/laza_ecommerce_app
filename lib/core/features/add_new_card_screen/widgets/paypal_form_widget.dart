import 'package:flutter/material.dart';
import 'package:laza_ecommerce_app/core/features/add_new_card_screen/widgets/custom_input_label_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';

class PaypalFormWidget extends StatelessWidget {
  const PaypalFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      key: ValueKey('paypal_ui'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomInputLabelWidget(labelText: "PayPal Email Address"),
        CustomTextField(hintText: "username@paypal.com"),
      ],
    );
  }
}
