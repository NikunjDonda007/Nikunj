import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_app/src/mvp/auth/connectwallet/connectwallet.dart';
import 'package:nft_app/src/mvp/auth/registration/view/register_account.dart';
import 'package:nft_app/src/mvp/auth/registration/view/register_page.dart';
import 'package:nft_app/src/mvp/home/tab/screenpage.dart';

import '../../../../../utilities/asset/asset_utilities.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool cheval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 57,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 160.56),
            child: Image(
              image: AssetImage(AssetUtilities.registeraccountlogo),
              height: 81,
              width: 74.88,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Register Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
          const SizedBox(height: 26),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Enter your name, email address & password to register account.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(136, 136, 136, 1),
              ),
            ),
          ),
          const SizedBox(
            height: 42,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 23, right: 255),
            child: Text(
              "Email Address",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(95, 95, 255, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextfeildWidget(
              namecontroller: emailcontroller, hintname: "Email Address"),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 23, right: 295),
            child: Text(
              "Password",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(95, 95, 255, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextfeildWidget(
              namecontroller: passwordcontroller, hintname: "Password"),
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27, left: 25),
            child: Row(
              children: [
                Container(
                  height: 22,
                  width: 22,
                  child: Checkbox(
                    value: cheval,
                    onChanged: (bool? value) {
                      setState(() {
                        cheval = value!;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                  ),
                ),
                const SizedBox(width: 7),
                const Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(102, 102, 102, 1)),
                ),
                const SizedBox(width: 85),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(102, 102, 102, 1)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Container(
              height: 57,
              width: 376,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: const Color.fromRGBO(95, 95, 255, 1)),
              child: CupertinoButton(
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenPage(),
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Don’t have an account ?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(85, 85, 85, 1)),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterAccount(),
                        ));
                  },
                  child: const Text(
                    "Register Account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(95, 95, 255, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 9),
                const Text(
                  "Or",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(102, 102, 102, 1)),
                ),
                const SizedBox(height: 9),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ConnectWallet(),
                        ));
                  },
                  child: const Text(
                    "Connect Wallet",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(95, 95, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
