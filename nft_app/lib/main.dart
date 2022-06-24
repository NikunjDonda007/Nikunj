import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/splashScreen/view/splash_screen.dart';

void main() {
  runApp(const NftApplication());
}

class NftApplication extends StatelessWidget {
  const NftApplication({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashSreen(),
    );
  }
}
