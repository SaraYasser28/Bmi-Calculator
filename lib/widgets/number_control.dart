import 'package:flutter/material.dart';
import 'circle_icon_button.dart';

class NumberControl extends StatelessWidget {
  const NumberControl({
    super.key,
    required this.label,
    required this.value,
    this.unit,
    required this.onDecrement,
    required this.onIncrement,
    required this.onValueChanged,
    required this.minValue,
    required this.maxValue,
  });

  final String label;
  final int value;
  final String? unit;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;
  final ValueChanged<int> onValueChanged;
  final int minValue;
  final int maxValue;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value.toString());

    return Column(
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(color: Colors.white70),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 60,
              child: TextField(
                textAlign: TextAlign.center,
                controller: controller,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
                keyboardType: TextInputType.number,
                onTap: () => controller.selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: controller.text.length,
                ),
                onSubmitted: (text) {
                  final parsed = int.tryParse(text);
                  if (parsed != null &&
                      parsed >= minValue &&
                      parsed <= maxValue) {
                    onValueChanged(parsed);
                  } else {
                    controller.text = value.toString();
                  }
                },
              ),
            ),
            if (unit != null) ...[
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  unit!,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleIconButton(icon: Icons.remove, onPressed: onDecrement),
            const SizedBox(width: 12),
            CircleIconButton(icon: Icons.add, onPressed: onIncrement),
          ],
        ),
      ],
    );
  }
}
