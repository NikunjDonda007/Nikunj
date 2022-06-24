import 'package:flutter/material.dart';
import 'package:nft_app/src/mvp/auth/connectwallet/connectingwallet.dart';
import 'package:nft_app/utilities/asset/asset_utilities.dart';

class ConnectWallet extends StatefulWidget {
  ConnectWallet({Key? key}) : super(key: key);

  @override
  State<ConnectWallet> createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
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
                const SizedBox(width: 85),
                const Text(
                  "Connect Wallet",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                )
              ],
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Text(
              "Please connect Wallet to this marketplace For start trading.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(136, 136, 136, 1)),
            ),
          ),
          const SizedBox(height: 42),
          const WalletWidget(name: "MetaMask", icon: AssetUtilities.connect01),
          const SizedBox(height: 30),
          const WalletWidget(name: "Coinbase", icon: AssetUtilities.connect02),
          const SizedBox(height: 30),
          const WalletWidget(name: "Portis", icon: AssetUtilities.connect03),
          const SizedBox(height: 30),
          const WalletWidget(
              name: "WalletConnect", icon: AssetUtilities.connect04),
          const SizedBox(height: 42),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: Text(
              "By signing up you are agreed with our friendly ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(136, 136, 136, 1)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: Text(
              " terms and condition.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(51, 51, 51, 1)),
            ),
          )
        ],
      ),
    );
  }
}

class WalletWidget extends StatelessWidget {
  final String icon;
  final String name;

  const WalletWidget({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ConnectingWallwt()));
        },
        child: Container(
          height: 55,
          width: 376,
          decoration: BoxDecoration(
              color: const Color.fromARGB(156, 198, 198, 248),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.only(left: 38, top: 13, bottom: 13),
            child: Row(
              children: [
                Image.asset(icon),
                const SizedBox(width: 70),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(51, 51, 51, 1)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
