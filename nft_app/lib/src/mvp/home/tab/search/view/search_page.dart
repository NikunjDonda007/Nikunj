import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/home/tab/profilepage/tab/myprofile/view/myprofile.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';
import 'package:nft_app/utilities/itemsutilities.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchcontroller = TextEditingController();
  bool serching = true;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Container(
                height: 50,
                width: 384,
                child: TextField(
                  controller: searchcontroller,
                  onChanged: (value) {
                    setState(() {
                      if (value.length == 1) {
                        setState(() {
                          serching = false;
                        });
                      } else {
                        serching = true;
                      }
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Items, creater or collections",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            serching
                ? Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 33),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 34,
                              width: 110,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color.fromRGBO(188, 188, 188, 1),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 13),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset(
                                        AssetUtilities.searchpage01),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    "Artwork",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(51, 51, 51, 1)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 34,
                              width: 99,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color.fromRGBO(188, 188, 188, 1),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 13),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset(
                                        AssetUtilities.searchpage02),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    "Music",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 34,
                              width: 108,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color.fromRGBO(188, 188, 188, 1),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 13),
                                  SizedBox(
                                    height: 16,
                                    width: 16,
                                    child: Image.asset(
                                        AssetUtilities.searchpage03),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    "Domain",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 246),
                      Container(
                        height: 160.51,
                        width: 255,
                        child: Image.asset(AssetUtilities.searchpageimage),
                      ),
                      const SizedBox(height: 23.39),
                      const Text(
                        "No item found\nSearch by items, creator or\ncollection",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(136, 136, 136, 1),
                        ),
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, left: 9, right: 239),
                        child: Text(
                            'Search result for "${searchcontroller.text}"'),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 9, right: 12, left: 14),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  index = 0;
                                });
                              },
                              child: Text(
                                "ITEMS",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: index == 0
                                        ? const Color.fromRGBO(51, 51, 51, 1)
                                        : const Color.fromRGBO(
                                            136, 136, 136, 1)),
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
                                "CREATORS",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: index == 1
                                        ? const Color.fromRGBO(51, 51, 51, 1)
                                        : const Color.fromRGBO(
                                            136, 136, 136, 1)),
                              ),
                            ),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  index = 2;
                                });
                              },
                              child: Text(
                                "COLLECTIONS",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: index == 2
                                        ? const Color.fromRGBO(51, 51, 51, 1)
                                        : const Color.fromRGBO(
                                            136, 136, 136, 1)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 2,
                              color: index == 0
                                  ? const Color.fromRGBO(95, 95, 255, 1)
                                  : const Color.fromRGBO(218, 218, 218, 1),
                            ),
                            Container(
                              width: 24,
                              height: 2,
                              color: const Color.fromRGBO(218, 218, 218, 1),
                            ),
                            Container(
                              width: 101,
                              height: 2,
                              color: index == 1
                                  ? const Color.fromRGBO(95, 95, 255, 1)
                                  : const Color.fromRGBO(218, 218, 218, 1),
                            ),
                            Container(
                              width: 26,
                              height: 2,
                              color: const Color.fromRGBO(218, 218, 218, 1),
                            ),
                            Container(
                              width: 130,
                              height: 2,
                              color: index == 2
                                  ? const Color.fromRGBO(95, 95, 255, 1)
                                  : const Color.fromRGBO(218, 218, 218, 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      GridView.builder(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 0.9),
                        itemCount: itemlisr.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CardPanel2(
                              name: itemlisr[index].name,
                              url: itemlisr[index].url);
                        },
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

class CardPanel2 extends StatelessWidget {
  final String url;
  final String name;
  const CardPanel2({
    required this.name,
    required this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: double.infinity,
        width: 182,
        child: Card(
          semanticContainer: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 163,
                width: 182,
                child: Image.asset(
                  url,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4, left: 7, right: 33),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
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
                    ),
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
