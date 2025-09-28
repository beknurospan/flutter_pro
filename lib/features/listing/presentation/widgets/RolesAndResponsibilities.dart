import 'package:flutter/cupertino.dart';

class RolesAndResponsibilitiesSection extends StatelessWidget {
  const RolesAndResponsibilitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final roles = [
      "Drive the design process with cross-functional partners and design leads.",
      "Design new experiences and patterns in a complex ecosystem and across platforms.",
      "Partner with UX Research and Content Strategists through the design process.",
      "Work closely with Product and Engineering to..."
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Roles and Responsibilities",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 8),
        ...roles.map((e) => Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("• "),
              Expanded(child: Text(e)),
            ],
          ),
        )),
      ],
    );
  }
}