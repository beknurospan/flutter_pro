import 'package:flutter/material.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/TopBar.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/WhiteCard.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/RolesAndResponsibilities.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/JobDescription.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/JobInfo.dart';
import 'package:flutter_pro/features/listing/presentation/widgets/Header.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: const TopBar(),
      ),
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WhiteCard(child: HeaderSection()),
              SizedBox(height: 6),
              WhiteCard(child: JobInfoSection()),
              SizedBox(height: 6),
              WhiteCard(child: JobDescriptionSection()),
              SizedBox(height: 6),
              WhiteCard(child: RolesAndResponsibilitiesSection()),
            ],
          ),
        ),
      ),
    );
  }
}






