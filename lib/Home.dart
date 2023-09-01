import 'package:flutter/material.dart';
import 'main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Container(
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/img.png',
                      width: 55,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'what\'s on your mind?',
                            labelStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          ),
                        ),
                    )
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}