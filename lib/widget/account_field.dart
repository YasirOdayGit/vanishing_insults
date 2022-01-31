import 'package:flutter/material.dart';
import 'package:vanishing_insults/constants/program_config.dart';

class AccountField extends StatelessWidget {
  const AccountField({Key? key, required this.description, required this.value})
      : super(key: key);
  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      margin: EdgeInsets.all(defaultPadding / 2),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: grayBack,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            description,
            style: TextStyle(color: textGray, fontSize: 16),
          ),
          Text(value, style: TextStyle(color: textGray, fontSize: 16))
        ],
      ),
    );
  }
}
