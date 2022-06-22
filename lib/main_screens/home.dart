import 'package:flutter/material.dart';
import 'package:linkedln_clone_app/widgets/header.dart';
import 'package:linkedln_clone_app/widgets/user_post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            header("assets/images/IMG_20190721_122258_0.jpg"),
            const UserPost(
              text:
                  "I was priveledged to represent my faculty in a design competition and came out on top",
              bio: "Mobile developer | flutter",
              circleAvatarImage: "assets/images/IMG_20190721_122258_0.jpg",
              name: "Ahunanya Peter",
              postImage: "assets/images/20211128_071637.jpg",
            ),
            const UserPost(
              text:
                  "I was priveledged to represent my faculty in a design competition and came out on top",
              bio: "Mobile developer | flutter",
              circleAvatarImage: "assets/images/IMG_20190721_122258_0.jpg",
              name: "Ahunanya Peter",
              postImage: "assets/images/20211128_071637.jpg",
            ),
            const UserPost(
              text:
                  "I was priveledged to represent my faculty in a design competition and came out on top",
              bio: "Mobile developer | flutter",
              circleAvatarImage: "assets/images/IMG_20190721_122258_0.jpg",
              name: "Ahunanya Peter",
              postImage: "assets/images/20211128_071637.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
