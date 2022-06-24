import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/tab/items/creatranking/creatranking.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/tab/myprofile/view/myprofile.dart';
import 'package:nft_app/utilities/notificationutilities/notificationutilities.dart';

import '../../../../../../utilities/asset/asset_utilities.dart';

class ProfilePage extends StatefulWidget {
  final VoidCallback backpress;
  ProfilePage({Key? key, required this.backpress}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 291),
                IconButton(
                  onPressed: widget.backpress,
                  icon: Image.asset(AssetUtilities.uperrightsideicon),
                ),
              ],
            ),
          ),
          const SizedBox(height: 43.27),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Card(
              elevation: 30,
              child: Padding(
                padding: const EdgeInsets.only(top: 14, left: 17, right: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          child: Image.asset(AssetUtilities.notifiavatar01),
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  notificationlist[0].name!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Image.asset(AssetUtilities.righticon,
                                    height: 13, width: 13),
                              ],
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 15),
                                const Text(
                                  "@dora.son",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(136, 136, 136, 1)),
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "0*2c4....05257ea3",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(51, 51, 51, 1)),
                                ),
                                const SizedBox(width: 3),
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(AssetUtilities.copyicon),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Row(
                        children: const [
                          Text(
                            "Main Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                          SizedBox(width: 108),
                          Text(
                            "Bidding Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(136, 136, 136, 1)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: Row(
                        children: [
                          const Text(
                            "12.58 ETH",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                          const SizedBox(width: 11),
                          GestureDetector(
                            child: Container(
                              height: 20,
                              width: 58,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 157, 157, 245)),
                              child: const Center(
                                child: Text(
                                  "Claim",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color.fromRGBO(95, 95, 255, 1)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 62),
                          const Text(
                            "9.58 ETH",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(51, 51, 51, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyProfile(),
                        ),
                      );
                    },
                    child: Container(
                      height: 65,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 31.2),
                        child: Row(
                          children: [
                            Image.asset(AssetUtilities.profile),
                            const SizedBox(
                              width: 23.27,
                            ),
                            const Text(
                              "My profile",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 384,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 65,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 31.2),
                        child: Row(
                          children: [
                            Image.asset(AssetUtilities.items),
                            const SizedBox(
                              width: 23.27,
                            ),
                            TextButton(
                              onPressed: (() {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return Creatranking();
                                  },
                                ));
                              }),
                              child: const Text(
                                "Items",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(51, 51, 51, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 384,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 65,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 31.2),
                        child: Row(
                          children: [
                            Image.asset(AssetUtilities.editprofile),
                            const SizedBox(
                              width: 23.27,
                            ),
                            const Text(
                              "Edit profile",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 384,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 65,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 31.2),
                        child: Row(
                          children: [
                            Image.asset(AssetUtilities.managefunds),
                            const SizedBox(
                              width: 23.27,
                            ),
                            const Text(
                              "Manage funds",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 384,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 65,
                      width: 384,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 31.2),
                        child: Row(
                          children: [
                            Image.asset(AssetUtilities.signout),
                            const SizedBox(
                              width: 23.27,
                            ),
                            const Text(
                              "Sign out",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(51, 51, 51, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
