import 'package:flutter/material.dart';
import 'package:linkedln_clone_app/widgets/user_network.dart';

import '../widgets/header.dart';

class MyNetwork extends StatelessWidget {
  const MyNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: header("assets/images/IMG_20190721_122258_0.jpg"),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                ManageNetwork(
                  name: "Ahunanya Peter",
                  bio: "Mobile developer",
                ),
                Expanded(
                    child: ManageNetwork(
                  name: "Richard Johnson",
                  bio: "Python developer",
                ))
              ],
            ),
            Row(
              children: const [
                ManageNetwork(
                  name: "Ahunanya Peter",
                  bio: "Mobile developer",
                ),
                Expanded(
                    child: ManageNetwork(
                  name: "Richard Johnson",
                  bio: "Python developer",
                ))
              ],
            ),
            Row(
              children: [
                ManageNetwork(
                  name: "Ahunanya Peter",
                  bio: "Mobile developer",
                ),
                Expanded(
                    child: ManageNetwork(
                  name: "Richard Johnson",
                  bio: "Python developer",
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
