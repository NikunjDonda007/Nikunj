import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../utilities/asset/asset_utilities.dart';

class FolloworsPage extends StatefulWidget {
  FolloworsPage({Key? key}) : super(key: key);

  @override
  State<FolloworsPage> createState() => _FolloworsPageState();
}

class _FolloworsPageState extends State<FolloworsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
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
                  const SizedBox(width: 87),
                  const Text(
                    "Followers",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                  const SizedBox(width: 118),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(AssetUtilities.uperrightsideicon),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar01,
              follonumber: "257 Followers",
              name: "Aela schultz",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: true,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar02,
              follonumber: "85 Followers",
              name: "Nila Lane",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: false,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar03,
              follonumber: "Funds Transfer",
              name: "Lissa Harris",
              widger: const SizedBox(),
              changevale: false,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar04,
              follonumber: "257 Followers",
              name: "Aela schultz",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: true,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar05,
              follonumber: "85 Followers",
              name: "Nila Lane",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: false,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar06,
              follonumber: "257 Followers",
              name: "Aela schultz",
              widger: const SizedBox(),
              changevale: true,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar02,
              follonumber: "257 Followers",
              name: "Aela schultz",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: true,
            ),
            FollowoorsWidget(
              avtar: AssetUtilities.notifiavatar03,
              follonumber: "85 Followers",
              name: "Aela schultz",
              widger: const Image(
                image: AssetImage(AssetUtilities.righticon),
              ),
              changevale: false,
            ),
          ],
        ),
      ),
    );
  }
}

String follow = "+ Follow";
String following = "Following";

class FollowoorsWidget extends StatefulWidget {
  final avtar;
  final name;
  final follonumber;
  final widger;

  bool changevale = false;
  FollowoorsWidget({
    required this.avtar,
    required this.follonumber,
    required this.name,
    required this.widger,
    required this.changevale,
    Key? key,
  }) : super(key: key);

  @override
  State<FollowoorsWidget> createState() => _FollowoorsWidgetState();
}

class _FollowoorsWidgetState extends State<FollowoorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      child: Card(
        elevation: 5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17, bottom: 13, top: 13),
              child: Image.asset(widget.avtar),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                ),
                Text(
                  widget.follonumber,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(136, 136, 136, 1)),
                )
              ],
            ),
            const SizedBox(width: 6),
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 40),
              child: widget.widger,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 75, right: 2, top: 13, bottom: 19),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.changevale = !widget.changevale;
                  });
                },
                child: Container(
                  height: 35,
                  width: 105,
                  decoration: BoxDecoration(
                    border: widget.changevale
                        ? Border.all(
                            color: Colors.white,
                          )
                        : Border.all(
                            color: const Color.fromRGBO(218, 218, 218, 1)),
                    color: widget.changevale
                        ? const Color.fromARGB(255, 175, 175, 248)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Text(
                      widget.changevale ? follow : following,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: widget.changevale
                              ? const Color.fromRGBO(95, 95, 255, 1)
                              : const Color.fromRGBO(136, 136, 136, 1)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
