import 'package:flutter/material.dart';
import 'package:linkedln_clone_app/widgets/notification_list_tile.dart';

import '../widgets/header.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            header("assets/images/IMG_20190721_122258_0.jpg"),
            const SizedBox(
              height: 30,
            ),
            notificationTile("assets/images/IMG_20190721_122258_0.jpg",
                "I'm officially looking for a new role")
          ],
        ),
      ),
    );
  }
}
