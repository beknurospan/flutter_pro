import 'package:flutter/material.dart';
import 'package:flutter_pro/features/archive/presentation/widgets/JobCard.dart';
import 'package:flutter_pro/features/archive/presentation/widgets/JobSection.dart';
import 'package:flutter_pro/features/archive/presentation/widgets/StatusBadge.dart';

class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5DED4),
      body: SafeArea(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Avatar.png"),
                    radius: 18,
                  ),
                  const Icon(
                    Icons.notifications_none,
                    color: Color(0xFF434545),
                    size: 24,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFB5DED4),
                  borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: const [
                    JobSection(
                      title: "DESIGNER",
                      jobs: [
                        JobCard(
                          title: "Junior UX Designer",
                          company: "Canva",
                          salary: "\$40–60k/yearly",
                          status: JobStatus.none,
                        ),
                        JobCard(
                          title: "Junior Product Designer",
                          company: "Canva",
                          salary: "\$40–60k/yearly",
                          status: JobStatus.applied,
                        ),
                        JobCard(
                          title: "Middle motion Designer",
                          company: "Canva",
                          salary: "\$40–60k/yearly",
                          status: JobStatus.expiring,
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    JobSection(
                      title: "ANDROID",
                      jobs: [
                        JobCard(
                          title: "Junior Android developer",
                          company: "Kotlin, Java",
                          salary: "\$40–60k/yearly",
                          status: JobStatus.none,
                        ),
                        JobCard(
                          title: "Middle Android developer",
                          company: "Kotlin, Java",
                          salary: "\$40–60k/yearly",
                          status: JobStatus.expiring,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
