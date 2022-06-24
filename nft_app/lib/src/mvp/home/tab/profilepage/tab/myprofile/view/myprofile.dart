import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/tab/myprofile/tab/following/view/following.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';

import '../tab/followers/view/followers.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 33),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 75),
                  const Text(
                    "Connect Wallet",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                  const SizedBox(width: 32),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                  const SizedBox(width: 1),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                height: 251,
                width: 395,
                child: Image.asset(AssetUtilities.myprofile01),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Container(
                height: 252,
                width: 276,
                child: Column(children: [
                  const Text(
                    "Dora E. Wilson",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      SizedBox(width: 20),
                      Text(
                        "@dora.son",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(136, 136, 136, 1)),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "0*2c4....05257ea3",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(51, 51, 51, 1)),
                      )
                    ],
                  ),
                  const SizedBox(height: 21),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(AssetUtilities.intaicon)),
                        const SizedBox(width: 10),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(AssetUtilities.fbicon)),
                        const SizedBox(width: 10),
                        IconButton(
                            onPressed: () {},
                            icon: Image.asset(AssetUtilities.twiticon)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(children: [
                      const Text(
                        "3389 ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(51, 51, 51, 1)),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FolloworsPage(),
                                ));
                          });
                        },
                        child: Container(
                          height: 21,
                          width: 85,
                          child: const Center(
                            child: Text(
                              " Followers ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(136, 136, 136, 1)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 9,
                      ),
                      const Text(
                        "55",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(51, 51, 51, 1),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Following(),
                              ),
                            );
                          });
                        },
                        child: const Text(
                          " Following ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(136, 136, 136, 1),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Container(
                      height: 55,
                      width: 240,
                      child: CupertinoButton(
                        child: const Text(
                          "+ FOLLOW",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        onPressed: () {},
                        color: const Color.fromRGBO(95, 95, 255, 1),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Text(
                      "ON SALE 5",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: index == 0
                              ? const Color.fromRGBO(51, 51, 51, 1)
                              : const Color.fromRGBO(136, 136, 136, 1)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Text(
                      "CREATED 24",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: index == 1
                            ? const Color.fromRGBO(51, 51, 51, 1)
                            : const Color.fromRGBO(136, 136, 136, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Text(
                      "LIKED 258",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: index == 2
                            ? const Color.fromRGBO(51, 51, 51, 1)
                            : const Color.fromRGBO(136, 136, 136, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  Container(
                    height: 2,
                    width: 95,
                    color: index == 0
                        ? const Color.fromRGBO(95, 95, 255, 1)
                        : const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  Container(
                    height: 2,
                    width: 24,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  Container(
                    height: 2,
                    width: 115,
                    color: index == 1
                        ? const Color.fromRGBO(95, 95, 255, 1)
                        : const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  Container(
                    height: 2,
                    width: 28,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  Container(
                    height: 2,
                    width: 98,
                    color: index == 2
                        ? const Color.fromRGBO(95, 95, 255, 1)
                        : const Color.fromRGBO(218, 218, 218, 1),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Row(
                children: const [
                  CardPanel(
                    name: "Soft Body Dynamics 46",
                    url: AssetUtilities.myprofile02,
                  ),
                  CardPanel(
                    name: "Dark Smile",
                    url: AssetUtilities.myprofile03,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardPanel extends StatelessWidget {
  final String url;
  final String name;
  const CardPanel({
    required this.name,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Card(
        child: Container(
          width: 182,
          height: 221,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 163,
                width: 182,
                child: Image.asset(url),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 7, right: 33),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                  left: 7,
                ),
                child: Row(
                  children: [
                    Text(
                      "FROM 0.85 ETH",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: <Color>[
                              Color.fromRGBO(148, 118, 253, 1),
                              Color.fromRGBO(224, 106, 253, 1)
                              //add more color here.
                            ],
                          ).createShader(
                            const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
                          ),
                      ),
                    ),
                    const SizedBox(width: 17),
                    Image.asset(AssetUtilities.uperarrow),
                    const SizedBox(width: 0.85),
                    const Text(
                      "0.82",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(136, 136, 136, 1)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Row(
                  children: [
                    const Text(
                      "2/48",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(136, 136, 136, 1),
                      ),
                    ),
                    const SizedBox(width: 109),
                    Image.asset(AssetUtilities.hearticon),
                    const SizedBox(width: 2),
                    const Text(
                      "124",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(136, 136, 136, 1),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
