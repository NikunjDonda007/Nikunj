import 'package:nft_app/utilities/asset/asset_utilities.dart';

class Slide {
  String? url;
  String? title;
  String? decription;
  Slide({this.url, this.title, this.decription});
}

final slidelist = [
  Slide(
      url: AssetUtilities.onbording01,
      title: "Create Your NFT",
      decription: """Each Idea Instantly Backed \nto The Blockchain"""),
  Slide(
      url: AssetUtilities.onbording02,
      title: "Connect Your Wallet",
      decription: """Use Trust Wallet or Metamask to \nconnect to the app"""),
  Slide(
      url: AssetUtilities.onbording03,
      title: "Search Best NFT with Us",
      decription: "The Best Platform to Buy and Sell \nNFT Quickly and Easily"),
];
