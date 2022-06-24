import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/onbording/view/onbording.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBording()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          AssetUtilities.splashScreen01,
          fit: BoxFit.fill,
        ),
        Image.asset(
          AssetUtilities.splashScreen02,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(110, 139, 110, 139),
          child: Image.asset(AssetUtilities.splashScreenLogo),
        )
      ],
    ));
  }
}
