
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myOpacity = 1.0;
  bool isVisible = true;


  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(seconds: 2),
              child: Image.network(
                'https://c4.wallpaperflare.com/wallpaper/256/101/286/fc-barcelona-logo-wallpaper-preview.jpg',
                width: 100, 
                height: 100, 
                fit: BoxFit.cover, 
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isVisible) {
                    myOpacity = 0.0;
                    isVisible = false;
                  } else {
                    myOpacity = 1.0;
                    isVisible = true;
                  }
                });
              },
              child: Text(isVisible ? ' hide visible' : 'Show'),
            ),
          ],
        ),
      ),
    );
  }
}
