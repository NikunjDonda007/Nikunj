import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/auth/connectwallet/connectwallet.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';
import 'dart:math' as pi;

import '../../home/tab/screenpage.dart';

class ConnectingWallwt extends StatefulWidget {
  const ConnectingWallwt({Key? key}) : super(key: key);

  @override
  State<ConnectingWallwt> createState() => _ConnectingWallwtState();
}

class _ConnectingWallwtState extends State<ConnectingWallwt> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 70),
                const Text(
                  "Connect Wallet",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
                const SizedBox(width: 39),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => PlacebidDialog1(),
                    );
                  },
                  icon: const Icon(Icons.more_horiz),
                ),
                // const SizedBox(width: 3),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
          ),
          const SizedBox(height: 43),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                index == 1
                    ? Stack(children: [
                        Container(
                          height: 258,
                          width: 383,
                          decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(213, 181, 218, 1),
                                Color.fromRGBO(226, 225, 194, 1),
                                Color.fromRGBO(193, 221, 198, 1),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 48, right: 113, left: 113),
                          child: Image.asset(AssetUtilities.connectwallet01),
                        )
                      ])
                    : SizedBox(
                        height: 266,
                        width: 383,
                        child: Image.asset(AssetUtilities.connectwallet02)),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset(AssetUtilities.cameraicon),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Photos",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(51, 51, 51, 1),
                        ),
                      ),
                      const SizedBox(width: 250),
                      SizedBox(
                        width: 10,
                        height: 9,
                        child: Image.asset(
                          AssetUtilities.hearticonred,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "124",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromRGBO(136, 136, 136, 1),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 22),
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 259),
                  child: Text(
                    "Zero Gravity",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(51, 51, 51, 1)),
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 42,
                            width: 42,
                            child: Image.asset(AssetUtilities.notifiavatar01),
                          )
                        ],
                      ),
                      const SizedBox(width: 11),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "CREATOR",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                          Text(
                            "Edwa Stear",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          )
                        ],
                      ),
                      const SizedBox(width: 63),
                      Column(
                        children: [
                          SizedBox(
                            height: 42,
                            width: 42,
                            child: Image.asset(AssetUtilities.notifiavatar02),
                          )
                        ],
                      ),
                      const SizedBox(width: 11),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "COLLECTION",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(136, 136, 136, 1),
                            ),
                          ),
                          Text(
                            "Patter Rolexa",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(51, 51, 51, 1),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 36),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "PRICE",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 11),
                      Row(
                        children: const [
                          Text(
                            "0.028 ETH (~\$297.02)",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                          SizedBox(width: 104),
                          Text(
                            "In  Stock 5 of 10",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Text(
                          "INFO",
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
                          "BIDS",
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
                          "HISTORY",
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
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Container(
                        height: 2,
                        width: 47,
                        color: index == 0
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
                        width: 50,
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
                        width: 80,
                        color: index == 2
                            ? const Color.fromRGBO(95, 95, 255, 1)
                            : const Color.fromRGBO(218, 218, 218, 1),
                      ),
                      Container(
                        height: 2,
                        width: 125,
                        color: const Color.fromRGBO(218, 218, 218, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          index == 1
              ? Column(
                  children: const [
                    SizedBox(height: 20),
                    Connectin(
                      name: "Roe Ferris",
                      url: AssetUtilities.notifiavatar01,
                    ),
                    SizedBox(height: 20),
                    Connectin(
                      name: "Roe Ferris",
                      url: AssetUtilities.notifiavatar03,
                    ),
                    SizedBox(height: 33),
                  ],
                )
              : SizedBox(
                  width: 500,
                  height: 157,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 27.25,
                        width: 26.67,
                        child: Image.asset(AssetUtilities.historyicon),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "No history found",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(51, 51, 51, 1),
                        ),
                      ),
                      const SizedBox(height: 9),
                      const Text(
                        "Come back soon",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(136, 136, 136, 1),
                        ),
                      ),
                    ],
                  ),
                ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => PlacebidDialog(),
              );
            },
            child: Container(
              height: 50,
              width: 376,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color.fromRGBO(95, 95, 255, 1)),
              child: const Center(
                child: Text(
                  "Place a bid",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class Connectin extends StatelessWidget {
  final String name;
  final String url;
  const Connectin({Key? key, required this.name, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [Image.asset(url)],
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 228),
                child: Text(
                  "   HIGHEST BID BY",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(136, 136, 136, 1),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  const SizedBox(width: 2),
                  Image.asset(AssetUtilities.righticon),
                  const SizedBox(width: 90),
                  const Text(
                    "0.028 ETH ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  const Text(
                    "(~\$297.02)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(136, 136, 136, 1),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PlacebidDialog extends StatefulWidget {
  PlacebidDialog({Key? key}) : super(key: key);

  @override
  State<PlacebidDialog> createState() => _PlacebidDialogState();
}

class _PlacebidDialogState extends State<PlacebidDialog> {
  String dropdownvalue = "ETH";
  var drop = ["ETH", "MTH"];
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: const EdgeInsets.all(15),
      children: [
        // const    SizedBox(height: 29),
        Row(
          children: [
            const SizedBox(width: 29),
            const Text(
              "Place a bid",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(51, 51, 51, 1)),
            ),
            const SizedBox(width: 160),
            Transform.rotate(
              angle: 45 * pi.pi / 180,
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Color.fromRGBO(136, 136, 136, 1),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 9),
        const Padding(
          padding: EdgeInsets.only(left: 29.0),
          child: Text(
            "You are bidding on",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(136, 136, 136, 1)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 29.0),
          child: Text(
            "Zero Gravity 1 of 1 by @Edward Stew",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 29),
          child: Row(
            children: const [
              Text(
                "Your Bid",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(51, 51, 51, 1)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 29.0),
                child: Text(
                  "Minimum 0.027 ETH",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(136, 136, 136, 1)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.only(left: 29, right: 20),
          child: Container(
            height: 50,
            width: 325,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter bid amount",
                  border: OutlineInputBorder(),
                  suffixIcon: DropdownButton(
                    onChanged: (String? newvalue) {
                      setState(() {
                        dropdownvalue = newvalue!;
                      });
                    },
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: drop.map((String items) {
                      return DropdownMenuItem(
                        child: Text(items),
                        value: items,
                      );
                    }).toList(),
                  )),
            ),
          ),
        ),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Row(
            children: [
              const Text(
                "Your balance",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(136, 136, 136, 1)),
              ),
              const SizedBox(width: 16),
              GestureDetector(
                child: Container(
                  height: 26,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 150, 150, 250),
                  ),
                  child: const Center(
                    child: Text(
                      "DEPOSITE",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(95, 95, 255, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 26),
              const Text(
                "2.358 ETH",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(51, 51, 51, 1),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 17),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Totle bid amount",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(136, 136, 136, 1),
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    "Service Fee (3%)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(136, 136, 136, 1),
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    "You will pay",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(136, 136, 136, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 105,
              ),
              Column(
                children: const [
                  Text(
                    "0.087 ETH",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    "7.58 ETH",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  SizedBox(height: 17),
                  Text(
                    "21.58 ETH",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 72),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: const Color.fromRGBO(95, 95, 255, 1),
            ),
            height: 55,
            width: 324,
            child: const Center(
              child: Text(
                "Place a bid",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 35)
      ],
    );
  }
}

class PlacebidDialog1 extends StatefulWidget {
  PlacebidDialog1({Key? key}) : super(key: key);

  @override
  State<PlacebidDialog1> createState() => _PlacebidDialog1State();
}

class _PlacebidDialog1State extends State<PlacebidDialog1> {
  String dropdownvalue = "ETH";
  var drop = ["ETH", "MTH"];
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: const EdgeInsets.all(15),
      children: [
        Row(
          children: [
            const SizedBox(width: 29),
            const Text(
              "Submit a report",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(51, 51, 51, 1)),
            ),
            const SizedBox(width: 120),
            Transform.rotate(
              angle: 45 * pi.pi / 180,
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Color.fromRGBO(136, 136, 136, 1),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 29),
          child: Text(
            "You are bidding on",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(136, 136, 136, 1)),
          ),
        ),
        const SizedBox(height: 60),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Why You Reporting ?",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(5)),
            height: 50,
            width: 300,
            child: DropdownButton(
              items: drop.map((String items) {
                return DropdownMenuItem(
                  child: Text(items),
                  value: items,
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  dropdownvalue = value!;
                });
              },
              value: dropdownvalue,
              hint: const Text(
                "\t\t\t\tSelect a reason\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t           ",
                style: TextStyle(),
              ),
            ),
          ),
        ),
        const SizedBox(height: 28),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 29),
          child: Text(
            "Message",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(51, 51, 51, 1)),
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: TextField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: "Explain your reporting reason",
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(18)),
              filled: true,
              focusColor: Colors.white38,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ),
        const SizedBox(height: 89),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Container(
            height: 55,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromRGBO(95, 95, 255, 1)),
            child: const Center(
              child: Text(
                "Place a bid",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        )
      ],
    );
  }
}
