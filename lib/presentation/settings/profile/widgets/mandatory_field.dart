import 'package:flutter/material.dart';

class MandatoryField extends StatelessWidget {
  final String fieldName;
  final bool isRequired;
  const MandatoryField({
    super.key,
    required this.fieldName,
    this.isRequired = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isRequired == true
            ? const Text("*", style: TextStyle(color: Colors.red))
            : const SizedBox(),
        const SizedBox(
          width: 5,
        ),
        Text(
          fieldName,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
