import 'package:flutter/material.dart';
import 'package:linkedln_clone_app/widgets/header.dart';
import 'package:linkedln_clone_app/widgets/notification_list_tile.dart';

class JobView extends StatelessWidget {
  const JobView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          children: [
            header("assets/images/IMG_20190721_122258_0 (3).jpg"),
            const SizedBox(
              height: 20,
            ),
            jobsTile("assets/images/IMG_20190721_122258_0 (3).jpg",
                "Mobile Developer", "lagos, Nigeria")
          ],
        ),
      ),
    );
  }
}
