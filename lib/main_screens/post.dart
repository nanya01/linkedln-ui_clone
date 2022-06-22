import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: const Text(
            'X',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        title: const Text(
          "Share Post",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30, top: 20),
            child: Text(
              'Post',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/IMG_20190721_122258_0 (2).jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Peter Ahunanya")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "What do you want to talk about?",
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: Container(
                height: 900,
                width: double.infinity,
                //margin: const EdgeInsets.all(20),
                child: DraggableScrollableSheet(
                    initialChildSize: 0.4,
                    minChildSize: 0.12,
                    maxChildSize: 0.7,
                    builder: (context, controller) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)),
                          padding: EdgeInsets.all(20),
                          child: ListView(
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.picture_in_picture),
                                  Text("Add a photo")
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.video_call_outlined),
                                  Text("Take a video")
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star),
                                  Text("Celebrate an occasion")
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.receipt_long),
                                  Text("Add a document")
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(Icons.leaderboard),
                                  Text("Create a poll")
                                ],
                              ),
                            ],
                          ),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
