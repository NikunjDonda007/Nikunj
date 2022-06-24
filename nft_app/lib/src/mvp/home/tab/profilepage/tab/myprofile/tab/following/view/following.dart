// ignore_for_file: prefer_typing_uninitialized_variables



import 'package:flutter/material.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';
import 'package:nft_app/utilities/following/followingutilities.dart';

class Following extends StatefulWidget {
  Following({Key? key}) : super(key: key);

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 33, right: 12, left: 12),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Collections",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8),
                  itemCount: followinglist.length,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 240,
                        width: 182,
                        child: CustomFollowing(
                          url: followinglist[index].url,
                          name: followinglist[index].name,
                          followers: followinglist[index].followors,
                        ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFollowing extends StatefulWidget {
  final url;
  final name;
  final followers;
  const CustomFollowing(
      {required this.followers,
      required this.name,
      required this.url,
      Key? key})
      : super(key: key);

  @override
  State<CustomFollowing> createState() => _CustomFollowingState();
}

class _CustomFollowingState extends State<CustomFollowing> {
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            child: Image.asset(
              widget.url,
              height: 80,
              width: 80,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 13),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(51, 51, 51, 1)),
              ),
              const SizedBox(width: 5),
              SizedBox(
                height: 9,
                width: 9,
                child: Image.asset(AssetUtilities.righticon),
              )
            ],
          ),
          const SizedBox(height: 1),
          const Text(
            "@cxdookr",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color.fromRGBO(136, 136, 136, 1),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.followers,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(51, 51, 51, 1)),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: () {
              setState(() {
                select = !select;
              });
            },
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(218, 218, 218, 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: select ? const Icon(Icons.add) : const Icon(Icons.check),
            ),
          ),
          const SizedBox(
            height: 11,
          )
        ],
      ),
    );
  }
}
