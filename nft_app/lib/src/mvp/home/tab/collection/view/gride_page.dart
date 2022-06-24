import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/home/tab/home/view/home_page.dart';
import 'package:nft_app/src/mvp/home/tab/screenpage.dart';
import 'package:nft_app/utilities/gridutilities/gride_utilities.dart';

class GridPage extends StatefulWidget {
  final VoidCallback backpress;
  GridPage({Key? key, required this.backpress}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 33),
          Row(
            children: [
              const SizedBox(width: 12),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenPage(),
                      ));
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color.fromRGBO(51, 51, 51, 1),
                ),
              ),
              const SizedBox(width: 90),
              const Text(
                "Collections",
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8),
                itemCount: gridlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: const EdgeInsets.all(11),
                    elevation: 5,
                    shadowColor: Colors.black,
                    color: const Color.fromRGBO(218, 218, 218, 1),
                    child: SizedBox(
                      width: 182,
                      height: 221,
                      child: Column(
                        children: [
                          Image.asset(
                            gridlist[index].url!,
                            height: 163,
                            width: 182,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            gridlist[index].name!,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            gridlist[index].type!,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromRGBO(136, 136, 136, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
