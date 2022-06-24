import 'package:flutter/material.dart';
import 'package:nft_app/utilities/notificationutilities/notificationutilities.dart';

import '../../../../../../utilities/asset/asset_utilities.dart';

class NotificationPage extends StatefulWidget {
  final VoidCallback onbackpress;
  NotificationPage({Key? key, required this.onbackpress}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 33),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                IconButton(
                  onPressed: widget.onbackpress,
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(width: 87),
                const Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(51, 51, 51, 1),
                  ),
                ),
                const SizedBox(width: 90),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(AssetUtilities.uperrightsideicon),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: notificationlist.length,
                  itemBuilder: (com, index) {
                    return NotificationPanel(
                      index: index,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationPanel extends StatelessWidget {
  final int index;
  const NotificationPanel({
    required this.index,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Card(
          elevation: 5,
          shadowColor: Colors.black,
          color: Color.fromRGBO(255, 255, 255, 1),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 14, left: 28, bottom: 45),
                    child: Container(
                      height: 42,
                      width: 42,
                      child: CircleAvatar(
                        child: Image.asset(notificationlist[index].avtar!),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 19, left: 15),
                    child: Text(
                      notificationlist[index].name!,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(51, 51, 51, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7, left: 15),
                    child: Text(
                      notificationlist[index].notifi!,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(136, 136, 136, 1)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 19, left: 2),
                    child: Text(notificationlist[index].time!),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
