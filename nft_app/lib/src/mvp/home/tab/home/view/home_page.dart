import 'dart:math';
import 'dart:math' as pi;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../utilities/asset/asset_utilities.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Paint gradiantcolor = Paint()
    ..shader = const LinearGradient(
      colors: <Color>[
        Color.fromRGBO(148, 118, 253, 1),
        Color.fromRGBO(224, 106, 253, 1)
        //add more color here.
      ],
    ).createShader(
      const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: Row(
                children: [
                  SizedBox(
                    height: 29,
                    width: 24.58,
                    child: Image.asset(AssetUtilities.registeraccountlogo),
                  ),
                  const SizedBox(
                    width: 15.53,
                  ),
                  const Text(
                    "NFT GALAXY ",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(95, 95, 255, 1),
                    ),
                  ),
                  const SizedBox(width: 190),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(AssetUtilities.uperrightsideicon),
                  )
                ],
              ),
            ),
            const SizedBox(height: 39.74),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 343,
                width: 388,
                child: Stack(
                  children: [
                    Image.asset(AssetUtilities.homepagecard),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 25, right: 100),
                          child: Text(
                            "Discover limited\nNFTs ",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28, right: 50),
                          child: Text(
                            "Create, Buy & Sell crypto\nNFTs from the #1 marketplace",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ),
                        ),
                        const SizedBox(
                          height: 49,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26, right: 180),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(95, 95, 255, 1),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: CupertinoButton(
                                child: const Text(
                                  "Explore Market",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                                onPressed: () {}),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "BEST",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(51, 51, 51, 1)),
                    ),
                  ),
                  const SizedBox(width: 19),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "SELLERS",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(95, 95, 255, 1)),
                    ),
                  ),
                  const SizedBox(width: 19),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "BUYERS",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(136, 136, 136, 1)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(95, 95, 255, 1)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 2,
                color: const Color.fromRGBO(218, 218, 218, 1),
              ),
            ),
            const SizedBox(height: 25),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: const [
                      HomePanel(
                          count: "#1",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                      HomePanel(
                          count: "#2",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                    ],
                  ),
                  Column(
                    children: const [
                      HomePanel(
                          count: "#1",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                      HomePanel(
                          count: "#2",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                    ],
                  ),
                  Column(
                    children: const [
                      HomePanel(
                          count: "#1",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                      HomePanel(
                          count: "#2",
                          avtar: AssetUtilities.avtar01,
                          followors: "dhfuf",
                          name: "name"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Row(
                children: [
                  const Text(
                    "Trending Auctions ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                    width: 18,
                    child: Image.asset(AssetUtilities.icon),
                  ),
                  const SizedBox(width: 125),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(95, 95, 255, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            HomeCard(
              name: "Lisa Harris",
              gradiantcolor: gradiantcolor,
              avatar: AssetUtilities.avtar01,
              url: AssetUtilities.back01,
              widgetcustom: Padding(
                padding: const EdgeInsets.only(top: 13, left: 13),
                child: Container(
                  height: 35,
                  width: 172,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 11, vertical: 10),
                    child: Row(
                      children: [
                        Text(
                          "23H",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              foreground: gradiantcolor),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "48M",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              foreground: gradiantcolor),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "08S",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              foreground: gradiantcolor),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          "LEFT",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              foreground: gradiantcolor),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 175),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(207, 207, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(95, 95, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(207, 207, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 45),
            Row(
              children: [
                const SizedBox(width: 15),
                const Text(
                  "Hot collections ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 18,
                  width: 18,
                  child: Image.asset(AssetUtilities.icon02),
                ),
                const SizedBox(width: 155),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(95, 95, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 23,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11.5),
              child: Container(
                height: 335,
                width: 388,
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    Image.asset(AssetUtilities.back02),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Image.asset(AssetUtilities.back03),
                        const SizedBox(width: 20),
                        Image.asset(AssetUtilities.back04),
                        const SizedBox(width: 20),
                        Image.asset(AssetUtilities.back05),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              "Water color collection",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(51, 51, 51, 1),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "12.52 ETH",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(136, 136, 136, 1),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 175),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(207, 207, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(95, 95, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(207, 207, 207, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 49),
            Row(
              children: [
                const SizedBox(width: 15),
                const Text(
                  "Discover NFTs plan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                ),
                const SizedBox(width: 4),
                Container(
                  height: 18,
                  width: 18,
                  child: Image.asset(AssetUtilities.icon03),
                ),
                const SizedBox(width: 130),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(95, 95, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
            HomeCard(
                avatar: AssetUtilities.avtar02,
                name: "John Smith",
                url: AssetUtilities.back06,
                widgetcustom: SizedBox(),
                gradiantcolor: gradiantcolor)
          ],
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final name;
  final avatar;
  final url;
  final widgetcustom;
  const HomeCard({
    Key? key,
    required this.avatar,
    required this.name,
    required this.url,
    required this.widgetcustom,
    required this.gradiantcolor,
  }) : super(key: key);

  final Paint gradiantcolor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        height: 350,
        width: 388,
        child: Stack(children: [
          Column(
            children: [
              SizedBox(
                height: 212,
                width: 388,
                child: Image.asset(url),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 29,
                          width: 29,
                          child: Image.asset(
                            avatar,
                            fit: BoxFit.fill,
                            height: 29,
                            width: 29,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(51, 51, 51, 1)),
                        ),
                        const SizedBox(width: 5),
                        Image.asset(AssetUtilities.righticon)
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: const [
                        Text(
                          "Soft Body Dynamics 46",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(51, 51, 51, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
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
                        Transform.rotate(
                          angle: 120 * pi.pi / 180,
                          child: const Icon(Icons.arrow_back,
                              color: Color.fromRGBO(136, 136, 136, 1)),
                        ),
                        const Text(
                          "0.82",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(136, 136, 136, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Text(
                          "2/48",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(136, 136, 136, 1),
                          ),
                        ),
                        const SizedBox(width: 300),
                        Image.asset(AssetUtilities.hearticon),
                        const SizedBox(width: 5),
                        const Text(
                          "124",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(136, 136, 136, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          widgetcustom
        ]),
      ),
    );
  }
}

class HomePanel extends StatelessWidget {
  final avtar;
  final name;
  final followors;
  final count;

  const HomePanel(
      {Key? key,
      required this.count,
      required this.avtar,
      required this.followors,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      child: Card(
        child: Row(
          children: [
            const SizedBox(width: 15),
            Center(
              child: Text(
                count,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, bottom: 13, top: 13),
              child: Image.asset(
                avtar,
                height: 42,
                width: 42,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                ),
                Text(
                  followors,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(136, 136, 136, 1)),
                )
              ],
            ),
            const SizedBox(width: 6),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 40),
              child: Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
            ),
            const SizedBox(width: 90),
          ],
        ),
      ),
    );
  }
}
