import 'package:absensipkl/base/router/navigation.dart';
import 'package:absensipkl/presentation/pages/home/home_screen.dart';
import 'package:absensipkl/base/common/colors.dart';
import 'package:absensipkl/perigatan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends StatefulWidget {
  static const String routeName = '/landing-screen';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/Wave.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 600,
                      child: Image.asset("assets/images/Sad.png"),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Liste()),
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            margin: const EdgeInsets.symmetric(horizontal: 48),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xff0099FF),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 4,
                                  color: Color(0x499c9c9c),
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/list.png",
                                  width: 18,
                                  height: 18,
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Jadwal",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 48),
                          padding: const EdgeInsets.symmetric(
                            vertical: 25,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  blurRadius: 4,
                                  color: Color(0x499c9c9c),
                                )
                              ],
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/pklhummatech.png",
                                width: 240,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Image.asset(
                                "assets/images/Ikan.png",
                                width: 280,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                cursorErrorColor: Colors.transparent,
                                focusNode: _focusNode,
                                controller: _textEditingController,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.transparent,
                                ),
                                cursorColor: Colors.transparent,
                                onSubmitted: (value) {
                                  Navigation.toNamed(
                                      routeName: HomeScreen.routeName);
                                },
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                              Text(
                                "Tab Untuk Mulai Presentasi",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  color: blackColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
