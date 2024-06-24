import 'package:flutter/material.dart';

class listscreen extends StatefulWidget {
  const listscreen({super.key});

  @override
  State<listscreen> createState() => __listscreenStateState();
}

class __listscreenStateState extends State<listscreen> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  // var _incrementcounter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementQuantity,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("WhatApp screen"),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _quantity,
        itemBuilder: (context, index) {
          const column = Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Preson name"),
              Text("message and calls"),
            ],
          );
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.035,
                  backgroundImage: const NetworkImage(
                      "data:image/jpeg;base64,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"),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: column,
                ),
                const Spacer(),
                const Text("Date"),
              ],
            ),
          );
        },
      ),
    );
  }
}
