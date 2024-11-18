import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String image;
  final String credit;
  const BackgroundWidget(
      {super.key, required this.image, required this.credit});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fitHeight,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 65.0),
            child: Text(
              credit,
              maxLines: 2,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
