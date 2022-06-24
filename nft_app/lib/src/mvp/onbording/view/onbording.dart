import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/src/mvp/auth/registration/view/register_account.dart';
import 'package:nft_app/utilities/slide.dart';

class OnBording extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  OnBording({Key? key}) : super(key: key);

  @override
  State<OnBording> createState() => _OnBodyState();
}

class _OnBodyState extends State<OnBording> {
  final PageController _pageController = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterAccount(),
                        ),
                      );
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(95, 95, 255, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 98,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 51),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: PageView.builder(
                        physics: BouncingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (value) {
                          setState(() {
                            index = value;

                            // value = indx;
                            print(value);
                          });
                        },
                        itemCount: slidelist.length,
                        itemBuilder: (BuildContext context, int pageindex) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                slidelist[index].url!,
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 49,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: index == 0 ? 22 : 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: index == 0
                            ? BorderRadius.circular(6)
                            : BorderRadius.circular(50),
                        color: index == 0
                            ? const Color.fromRGBO(95, 95, 255, 1)
                            : const Color.fromRGBO(207, 207, 207, 1),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: index == 1 ? 22 : 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: index == 1
                            ? BorderRadius.circular(6)
                            : BorderRadius.circular(50),
                        color: index == 1
                            ? const Color.fromRGBO(95, 95, 255, 1)
                            : const Color.fromRGBO(207, 207, 207, 1),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: index == 2 ? 22 : 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: index == 2
                            ? BorderRadius.circular(6)
                            : BorderRadius.circular(50),
                        color: index == 2
                            ? const Color.fromRGBO(95, 95, 255, 1)
                            : const Color.fromRGBO(207, 207, 207, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 79,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    slidelist[index].title!,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Center(
                    child: Text(
                      slidelist[index].decription!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(136, 136, 136, 1)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 114,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: CupertinoButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    index == 0 || index == 1
                        ? const Center(
                            child: Text(
                              "Next",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                              ),
                            ),
                          )
                        : const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Lato',
                              ),
                            ),
                          ),
                    const SizedBox(width: 11),
                    index == 2
                        ? Container()
                        : const Icon(Icons.arrow_forward_outlined),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    if (index == 2) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterAccount(),
                          ));
                    } else if (index < 2) {
                      index++;
                    }
                  });
                  _pageController.jumpToPage(index);
                },
                borderRadius: BorderRadius.circular(9),
                color: const Color.fromRGBO(95, 95, 255, 1),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
