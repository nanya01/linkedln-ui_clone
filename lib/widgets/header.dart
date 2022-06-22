import 'package:flutter/material.dart';

Widget header(String? image) {
  return SizedBox(
    height: 50,
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image ?? ""),
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(8.0)),
              hintStyle: const TextStyle(
                color: Color(0xff797979),
                fontSize: 14,
                fontFamily: 'KumbhSans',
              ),
              hintText: "Search",
              //  enabledBorder: inputBorder,
              //contentPadding: const EdgeInsets.all(8)
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.chat)))
      ],
    ),
  );
}
