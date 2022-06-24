import 'package:nft_app/utilities/asset/asset_utilities.dart';

class gridutilities {
  String? url;
  String? name;
  String? type;
  gridutilities({this.name, this.type, this.url});
}

final gridlist = [
  gridutilities(
      url: AssetUtilities.grid01, name: "Water Color", type: "(ERC-721)"),
  gridutilities(
      url: AssetUtilities.grid02, name: "Leron Art Doo", type: "(ERC-721)"),
  gridutilities(
      url: AssetUtilities.grid03, name: "Water Color", type: "(ERC-721)"),
  gridutilities(
      url: AssetUtilities.grid04, name: "Leron Art Doo ", type: "(ERC-721)"),
  gridutilities(
      url: AssetUtilities.grid05, name: "Water Color", type: "(ERC-721)"),
  gridutilities(
      url: AssetUtilities.grid06, name: "Leron Art Doo ", type: "(ERC-721)"),
];
