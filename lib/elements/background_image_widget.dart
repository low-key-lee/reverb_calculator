import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final Widget child;
  final ImageProvider image;

  const BackgroundImageWidget({
    Key key,
    this.image,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          buildBackground(),
          child,
        ],
      );

  Widget buildBackground() => ShaderMask(
        blendMode: BlendMode.darken,
        shaderCallback: (bounds) => const LinearGradient(
          colors: [
            Colors.black87,
            // Colors.black26,
            Colors.black12,
            Colors.transparent,
            Colors.black12,
            // Colors.black26,
            Colors.black87,
          ],
          stops: [0.0, 0.3, 0.5, 0.78, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: image,
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              ),
            ),
          ),
        ),
      );
}
