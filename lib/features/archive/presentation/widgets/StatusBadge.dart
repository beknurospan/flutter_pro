import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusBadge extends StatelessWidget {
  final JobStatus status;

  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    late Widget child;

    switch (status) {
      case JobStatus.applied:
        child = SvgPicture.asset(
          "assets/icons/applied.svg"
        );
        break;

      case JobStatus.expiring:
        child = SvgPicture.asset(
          "assets/icons/expires.svg"
        );
        break;

      default:
        child = const SizedBox.shrink();
    }

    return child;
  }
}

enum JobStatus { none, applied, expiring }

