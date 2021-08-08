import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  final String message;
  final bool left;

  MessageBox(this.message, this.left);

  @override
  Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: left ? Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ) : (
        Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      )
      ),
    );
    }
}
