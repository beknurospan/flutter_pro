import 'package:flutter/material.dart';

import 'StatusBadge.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String company;
  final String salary;
  final JobStatus status;

  const JobCard({
    super.key,
    required this.title,
    required this.company,
    required this.salary,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(

        children: [
          SizedBox(
            width: 10
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 45,
                height: 35,
                child: Image.asset("assets/images/canva.png", width: 15, height: 15)

              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAF9F3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Paystack",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF53595F),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          const SizedBox(width: 12),


          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            company,
                            style: const TextStyle(
                              color: Color(0xFF434545),
                              fontSize: 12,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (status != JobStatus.none) StatusBadge(status: status),
                  ],
                ),

                const SizedBox(height: 16),

                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      salary,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF434545),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
