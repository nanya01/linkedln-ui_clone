import 'package:flutter/material.dart';

Widget notificationTile(String image, String text) {
  return Column(
    children: [
      const Divider(),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
        ),
        title: Text(text),
        trailing: Column(
          children: const [Text("13h"), Icon(Icons.more_vert)],
        ),
      ),
    ],
  );
}

Widget jobsTile(String image, String jobTitle, String location) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 100,
            width: 50,
            child: Image.asset(image),
          ),
          Column(
            children: [
              Text(
                jobTitle,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(location, style: const TextStyle(color: Colors.grey)),
              const Text(
                "Actively recruiting",
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                "13 hours ago",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          const Icon(Icons.save_sharp),
        ],
      ),
      const Divider(
        color: Colors.grey,
        thickness: 1,
      )
    ],
  );
}
