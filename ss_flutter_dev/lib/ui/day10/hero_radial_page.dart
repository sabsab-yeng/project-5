import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class PhotoHero extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;
  PhotoHero({this.photo, this.onTap, this.width});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
        onTap: onTap,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints size) {
            return Image.asset(
              photo,
              fit: BoxFit.contain,
            );
          },
        ),
      ),
    );
  }
}

class RadialPage extends StatelessWidget {
  final double maxRadius;
  final clipRectSize;
  final Widget child;
  RadialPage({this.child, this.maxRadius})
      : clipRectSize = 2.0 * (maxRadius / math.sqrt2);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
          width: clipRectSize,
          height: clipRectSize,
          child: ClipRect(
            child: child,
          ),
        ),
      ),
    );
  }
}

class HeroRadiaPage extends StatelessWidget {
  static const double minRadius = 32.0;
  static const double maxRadius = 120.0;
  static const opacityCurve =
      const Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);
  static RectTween _createRectTween(Rect begin, Rect end) {
    return MaterialRectCenterArcTween(begin: begin, end: end);
  }

  Widget _buildHeroPage(
      BuildContext context, String imageName, String description) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Center(
        child: Card(
          elevation: 8.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: maxRadius * 2.0,
                height: maxRadius * 2.0,
                child: Hero(
                  createRectTween: _createRectTween,
                  tag: imageName,
                  child: RadialPage(
                    maxRadius: maxRadius,
                    child: PhotoHero(
                      photo: imageName,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
              Text(
                description,
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 3.0,
              ),
              const SizedBox(
                height: 16,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHero(
      BuildContext context, String imageName, String description) {
    return Container(
      width: minRadius * 2.0,
      height: minRadius * 2.0,
      child: Hero(
        createRectTween: _createRectTween,
        tag: imageName,
        child: RadialPage(
          maxRadius: maxRadius,
          child: PhotoHero(
            photo: imageName,
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder<void>(pageBuilder:
                  (BuildContext context, Animation<double> animation,
                      Animation<double> secondAnimation) {
                return AnimatedBuilder(
                  animation: animation,
                  builder: (BuildContext context, Widget child) {
                    return Opacity(
                      opacity: opacityCurve.transform(animation.value),
                      child: _buildHeroPage(context, imageName, description),
                    );
                  },
                );
              }));
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        alignment: FractionalOffset.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildHero(context, "images/user.png", "user"),
            _buildHero(context, "images/sabsab.png", "sabsab"),
            _buildHero(context, "images/channel.png", "channel"),
          ],
        ),
      ),
    );
  }
}
