import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  final String name;
  final String circleAvatarImage;
  final String postImage;
  final String bio;
  final String text;
  const UserPost(
      {required this.name,
      required this.circleAvatarImage,
      required this.bio,
      required this.postImage,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 650,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.circleAvatarImage),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name),
                    Text(widget.bio),
                    const Text('16h')
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('+ Follow'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(widget.text),
            Image.asset(
              widget.postImage,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [Icon(Icons.thumb_up_sharp), Text('Like')],
                ),
                Column(
                  children: const [Icon(Icons.chat), Text('Comment')],
                ),
                Column(
                  children: const [Icon(Icons.redo), Text('Share')],
                ),
                Column(
                  children: const [Icon(Icons.send), Text('Send')],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
