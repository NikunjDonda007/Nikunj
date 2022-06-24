import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/auth/registration/view/register_page.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({Key? key}) : super(key: key);

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(
            height: 57,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 160.56),
            child: Image(
              image: AssetImage(AssetUtilities.registeraccountlogo),
              height: 81,
              width: 74.88,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "Register Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Please connect Wallet to this marketplace For start trading.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(136, 136, 136, 1),
              ),
            ),
          ),
          SizedBox(height: 42),
          ReContainer(
              title: "Connect Wallet",
              icon: Image(image: AssetImage(AssetUtilities.walleticon))),
          SizedBox(
            height: 30,
          ),
          ReContainer(
              title: "Sign Up with Google",
              icon: Image(image: AssetImage(AssetUtilities.googleicon))),
          SizedBox(
            height: 30,
          ),
          ReContainer(title: "Sign Up with Facebook", icon: SizedBox()),
          SizedBox(
            height: 42,
          ),
          Padding(
            padding: EdgeInsets.only(right: 52, left: 45),
            child: Text(
              "By signing up you are agreed with our friendly ",
              style: TextStyle(
                  color: Color.fromRGBO(136, 136, 136, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 52, left: 45),
            child: Text(
              "terms and condition.",
              style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class ReContainer extends StatelessWidget {
  final Widget icon;
  final String title;
  const ReContainer({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        height: 55,
        width: 376,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: const Color.fromRGBO(235, 235, 255, 1),
        ),
        child: CupertinoButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RegisterPage(),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 70,
              ),
              Container(
                child: icon,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 17),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(51, 51, 51, 1)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
