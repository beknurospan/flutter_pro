import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'JobCard.dart';

class JobSection extends StatelessWidget {
  final String title;
  final List<JobCard> jobs;

  const JobSection({super.key, required this.title, required this.jobs});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(title,

            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Color(0xFF434545))),
        const SizedBox(height: 8),
        Column(children: jobs),
      ],
    );
  }
}