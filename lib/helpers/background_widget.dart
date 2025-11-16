import 'package:flutter/material.dart';

class BackgroundWidget extends StatefulWidget {
  final String image;
  final String credit;
  const BackgroundWidget(
      {super.key, required this.image, required this.credit});

  @override
  State<BackgroundWidget> createState() => _BackgroundWidgetState();
}

class _BackgroundWidgetState extends State<BackgroundWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final mediaQuery = MediaQuery.of(context);
      final targetCacheWidth =
          (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();
      precacheImage(
        ResizeImage(AssetImage(widget.image), width: targetCacheWidth),
        context,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final targetCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(
          widget.image,
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          filterQuality: FilterQuality.low,
          cacheWidth: targetCacheWidth,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: Text(
              widget.credit,
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
