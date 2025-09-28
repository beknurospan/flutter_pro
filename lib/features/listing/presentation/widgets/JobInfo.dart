import 'package:flutter/material.dart';

class JobInfoSection extends StatelessWidget {
  const JobInfoSection({super.key});

  Widget _infoItem(String title, String value, {bool highlight = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.toUpperCase(),
            style: const TextStyle(fontSize: 12, color: Colors.grey)),
        const SizedBox(height: 4),
        highlight
            ? Container(
          padding:
          const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.green.shade50,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            value,
            style: const TextStyle(color: Colors.green),
          ),
        )
            : Text(value,
            style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 3,
      children: [
        _infoItem("Apply Before", "03 June, 2022"),
        _infoItem("Job Nature", "Full-time", highlight: true),
        _infoItem("Salary Range", "40k - 60k/yearly"),
        _infoItem("Job Location", "Work from anywhere"),
      ],
    );
  }
}

