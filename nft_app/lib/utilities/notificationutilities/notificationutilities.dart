import 'package:nft_app/utilities/asset/asset_utilities.dart';

class notification {
  String? name;
  String? avtar;
  String? notifi;
  String? time;
  notification({this.avtar, this.name, this.notifi, this.time});
}

final notificationlist = [
  notification(
      avtar: AssetUtilities.notifiavatar01,
      name: "Aela schultz",
      notifi: "Following post",
      time: "29 Seconds ago"),
  notification(
      avtar: AssetUtilities.notifiavatar02,
      name: "Nila Lane",
      notifi: "Like art ",
      time: "2 Miniuts ago"),
  notification(
      avtar: AssetUtilities.notifiavatar03,
      name: "Lissa Harris",
      notifi: "Funds Transfer",
      time: "1 hour ago"),
  notification(
      avtar: AssetUtilities.notifiavatar04,
      name: "Aela schultz",
      notifi: "Follow people",
      time: "7 week ago"),
  notification(
      avtar: AssetUtilities.notifiavatar05,
      name: "Nila Lane",
      notifi: "85 Followers",
      time: "1 month ago"),
  notification(
      avtar: AssetUtilities.notifiavatar06,
      name: "Aela schultz",
      notifi: "Following post",
      time: "29 Seconds ago"),
];
