import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final IconData icon;
  final double iconSize;
  final Function onPressed;
  const SectionCard({
    super.key,
    required this.title,
    this.titleStyle,
    required this.icon,
    this.iconSize = 85.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ButtonStyle(
          padding:
              WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.all(8.0)),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(
              Theme.of(context).colorScheme.surface.withOpacity(0.9)),
        ),
        onPressed: () {
          onPressed();
        },
        child: SizedBox(
          width: size.width * 0.45,
          height: size.height * 0.45,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Icon(
                  icon,
                  size: iconSize,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style:
                      titleStyle ?? Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
