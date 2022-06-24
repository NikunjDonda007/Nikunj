import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/auth/login/view/loagin_page.dart';

import '../../../../../utilities/asset/asset_utilities.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
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
            padding: EdgeInsets.only(left: 23, right: 295),
            child: Text(
              "Full Name",
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
              namecontroller: namecontroller, hintname: "Full Name"),
          const SizedBox(height: 30),
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
                  onPressed: () {}),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Already have an account ?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(85, 85, 85, 1),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 170),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(95, 95, 255, 1),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class TextfeildWidget extends StatelessWidget {
  final String hintname;
  const TextfeildWidget(
      {Key? key, required this.namecontroller, required this.hintname})
      : super(key: key);

  final TextEditingController namecontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 27, left: 25),
      child: Container(
        height: 50,
        width: 376,
        child: TextField(
          controller: namecontroller,
          decoration: InputDecoration(
            hintText: hintname,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        ),
      ),
    );
  }
}
