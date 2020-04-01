import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class PhotoWidget extends StatelessWidget {
  final String photo;
  final VoidCallback onTap;
  final double width;
  PhotoWidget({this.photo, this.onTap, this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(
              photo,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroAnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0; //1.0 normal animation speed
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Center(
        child: PhotoWidget(
          photo: "images/user.png",
          width: 100.0,
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text("Second Page"),
                    ),
                    body: Container(
                      color: Colors.lightBlueAccent,
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.topLeft,
                      child: PhotoWidget(
                        photo: "images/user.png",
                        width: 400.0,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
