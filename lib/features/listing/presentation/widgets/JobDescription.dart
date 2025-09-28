import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JobDescriptionSection extends StatefulWidget {
  const JobDescriptionSection({super.key});

  @override
  State<JobDescriptionSection> createState() => JobDescriptionSectionState();
}

class JobDescriptionSectionState extends State<JobDescriptionSection> {
  bool expanded = false;

  final String description =
      "Can you bring creative human-centered ideas to life and make great things happen beyond what meets the eye? "
      "We believe in teamwork, fun, complex projects, diverse perspectives, and simple solutions. "
      "How about you? We're looking for a like-minded person to join our team and make an impact with us.";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Job Description",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 8),
        AnimatedCrossFade(
          firstChild: Text(
            description.substring(0, 120) + "...",
            style: const TextStyle(fontSize: 14),
          ),
          secondChild: Text(description,
              style: const TextStyle(fontSize: 14, height: 1.4)),
          crossFadeState:
          expanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
          duration: const Duration(milliseconds: 300),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              expanded = !expanded;
            });
          },
          child: Text(expanded ? "See less" : "See more"),
        )
      ],
    );
  }
}


