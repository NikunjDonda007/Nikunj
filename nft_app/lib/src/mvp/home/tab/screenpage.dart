import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/src/mvp/home/tab/collection/view/gride_page.dart';
import 'package:nft_app/src/mvp/home/tab/notification/view/notification_page.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/view/profile_page.dart';
import 'package:nft_app/src/mvp/home/tab/search/view/search_page.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';
import 'package:nft_app/src/mvp/home/tab/home/view/home_page.dart';

class ScreenPage extends StatefulWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  int bottomnavigation = 2;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (bottomnavigation != 2) {
          setState(() {
            bottomnavigation = 2;
          });
          return Future.value();
        } else {
          SystemNavigator.pop();
          return Future.value(false);
        }
      },
      child: Scaffold(
        body: [
          GridPage(
            backpress: () {
              setState(() {
                bottomnavigation = 2;
              });
            },
          ),
          SearchPage(),
          HomePage(),
          NotificationPage(
            onbackpress: () {
              setState(() {
                bottomnavigation = 2;
              });
            },
          ),
          ProfilePage(
            backpress: () {
              setState(() {
                bottomnavigation = 2;
              });
            },
          )
        ][bottomnavigation],
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    bottomnavigation = 0;
                  });
                },
                icon: Image.asset(
                  bottomnavigation == 0
                      ? AssetUtilities.gridiconwithcolor
                      : AssetUtilities.gridicon,
                  height: 19,
                  width: 19,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    bottomnavigation = 1;
                  });
                },
                icon: Image.asset(
                  bottomnavigation == 1
                      ? AssetUtilities.searchiconwithcolor
                      : AssetUtilities.searchicon,
                  height: 19,
                  width: 19,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    bottomnavigation = 2;
                  });
                },
                icon: Image.asset(
                  bottomnavigation == 2
                      ? AssetUtilities.homeiconwithcolor
                      : AssetUtilities.homeicon,
                  height: 19,
                  width: 19,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    bottomnavigation = 3;
                  });
                },
                icon: Image.asset(
                  bottomnavigation == 3
                      ? AssetUtilities.belliconwithcolor
                      : AssetUtilities.bellicon,
                  height: 19,
                  width: 19,
                ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    bottomnavigation = 4;
                  });
                },
                icon: Image.asset(
                  bottomnavigation == 4
                      ? AssetUtilities.profilriconwithcolor
                      : AssetUtilities.profilricon,
                  height: 19,
                  width: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
