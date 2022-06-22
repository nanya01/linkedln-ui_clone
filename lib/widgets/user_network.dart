import 'package:flutter/material.dart';

class ManageNetwork extends StatelessWidget {
  final String name;
  final String bio;
  const ManageNetwork({required this.name, required this.bio, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage("assets/images/IMG_20201225_131453_7.jpg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(name),
            const SizedBox(
              height: 10,
            ),
            Text(bio),
            Row(
              children: const [Icon(Icons.code), Text('36 mutual connections')],
            ),
            Container(
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Connect",
                  style: TextStyle(
                      fontFamily: "Kumbh Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xffFFFFFF)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(24.0),
                    ),
                  )),
                  minimumSize: MaterialStateProperty.all<Size>(
                      const Size.fromHeight(30)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
