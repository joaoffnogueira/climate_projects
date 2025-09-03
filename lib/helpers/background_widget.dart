import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String image;
  final String credit;
  const BackgroundWidget(
      {super.key, required this.image, required this.credit});

  @override
  Widget build(BuildContext context) {
    // Precache background to avoid first-frame jank when switching screens
    final mediaQuery = MediaQuery.of(context);
    final targetCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      precacheImage(
        ResizeImage(AssetImage(image), width: targetCacheWidth),
        context,
      );
    });
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          filterQuality: FilterQuality.low,
          cacheWidth: targetCacheWidth,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: Text(
              credit,
              maxLines: 2,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
