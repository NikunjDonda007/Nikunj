import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/tab/myprofile/tab/followers/view/followers.dart';
import 'package:nft_app/utilities/following/followingutilities.dart';

import '../../../../../../../../utilities/asset/asset_utilities.dart';
import '../../../../../../../../utilities/notificationutilities/notificationutilities.dart';

class Creatranking extends StatefulWidget {
  const Creatranking({Key? key}) : super(key: key);

  @override
  State<Creatranking> createState() => _CreatrankingState();
}

class _CreatrankingState extends State<Creatranking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(children: [
          const SizedBox(height: 33),
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
                const SizedBox(width: 87),
                const Text(
                  "Creater Ranking",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                ),
                const SizedBox(width: 61),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetUtilities.uperrightsideicon),
                ),
              ],
            ),
          ),
          const CreatrankingPanel(
              eth: "12.58 ETH",
              count: "#1",
              avtar: AssetUtilities.avtar01,
              followors: "257 Followers",
              name: "Aela schultz"),
          const CreatrankingPanel(
              eth: "112.58 ETH",
              count: "#2",
              avtar: AssetUtilities.avtar02,
              followors: "85 Followers",
              name: "Nila Lane"),
          const CreatrankingPanel(
              eth: "1.08 ETH",
              count: "#3",
              avtar: AssetUtilities.avtar03,
              followors: "Funds Transfer",
              name: "Lissa Harris"),
          const CreatrankingPanel(
              eth: "12.58 ETH",
              count: "#4",
              avtar: AssetUtilities.avtar04,
              followors: "257 Followers",
              name: "Aela schultz"),
          const CreatrankingPanel(
              eth: "12.58 ETH",
              count: "#5",
              avtar: AssetUtilities.avtar06,
              followors: "257 Followers",
              name: "Aela schultz"),
          const CreatrankingPanel(
              eth: "12.58 ETH",
              count: "#6",
              avtar: AssetUtilities.avtar01,
              followors: "257 Followers",
              name: "Aela schultz"),
          const CreatrankingPanel(
              eth: "12.58 ETH",
              count: "#7",
              avtar: AssetUtilities.avtar02,
              followors: "257 Followers",
              name: "Aela schultz"),
        ]),
      ),
    );
  }
}

class CreatrankingPanel extends StatelessWidget {
  final avtar;
  final name;
  final followors;
  final count;
  final eth;
  const CreatrankingPanel(
      {Key? key,
      required this.count,
      required this.eth,
      required this.avtar,
      required this.followors,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      child: Card(
        elevation: 5,
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
                      color: Color.fromRGBO(51, 51, 51, 1)),
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
            Center(
              child: Text(
                eth,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(85, 85, 85, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
