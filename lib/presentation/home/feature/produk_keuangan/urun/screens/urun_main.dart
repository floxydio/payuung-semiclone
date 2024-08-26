import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_test/theme/color_theme.dart';

class UrunPage extends StatefulWidget {
  const UrunPage({super.key});

  @override
  State<UrunPage> createState() => _UrunPageState();
}

class _UrunPageState extends State<UrunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Urun",
          style: TextStyle(color: ColorTheme.blackColor),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: ColorTheme.blackColor),
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.circleQuestion,
              color: ColorTheme.blackColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorTheme.primaryColor),
            onPressed: () {},
            child: const Text(
              "Selanjutnya",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 24, right: 24),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/urun.svg",
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Capai Tujuan Bersama Pasti Lebih Mudah",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
