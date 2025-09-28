import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/canva.png"),
              radius: 28,
            ),
            SizedBox(height: 20),
            Text(
              "Junior UX Designer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Canva"),
            Text(
              "Posted on 3 March",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        )
      ],
    );
  }
}