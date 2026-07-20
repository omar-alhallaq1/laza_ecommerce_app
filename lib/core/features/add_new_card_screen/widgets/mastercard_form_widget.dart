import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_ecommerce_app/core/features/add_new_card_screen/widgets/custom_input_label_widget.dart';
import 'package:laza_ecommerce_app/core/wedgets/custom_text_field.dart';

class MastercardFormWidget extends StatelessWidget {
  const MastercardFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey('mastercard_ui'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomInputLabelWidget(labelText: "Card Owner"),
        const CustomTextField(hintText: "Mrh Raju"),

        const CustomInputLabelWidget(labelText: "Card Number"),
        const CustomTextField(hintText: "5254 7634 8734 7690"),

        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomInputLabelWidget(labelText: "EXP"),
                  const CustomTextField(hintText: "24/24"),
                ],
              ),
            ),
            SizedBox(width: 15.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomInputLabelWidget(labelText: "CVV"),
                  const CustomTextField(hintText: "7763"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
