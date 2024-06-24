import 'package:absensipkl/base/router/navigation.dart';
import 'package:absensipkl/list.dart';
import 'package:absensipkl/presentation/pages/home/home_screen.dart';
import 'package:absensipkl/base/common/colors.dart';
import 'package:absensipkl/perigatan.dart';
import 'package:absensipkl/presentation/providers/home/home_provider.dart';
import 'package:absensipkl/presentation/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingScreen extends ConsumerStatefulWidget {
  static const String routeName = '/landing-screen';
  const LandingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingScreenState();
}

class _LandingScreenState extends ConsumerState<LandingScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {
        isFocus = _focusNode.hasFocus;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final HomeNotifier homeNotifier = ref.watch(homeProvider);

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
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Liste()),
                            );
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
                                autofocus: true,
                                cursorErrorColor: Colors.transparent,
                                focusNode: _focusNode,
                                controller: _textEditingController,
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.transparent,
                                ),
                                cursorColor: Colors.transparent,
                                onSubmitted: (value) async {
                                  homeNotifier.doPresentation(value).then(
                                    (value) {
                                      if (value != null) {
                                        toastSuccess(context, "Berhasil",
                                            "Berhasil presentasi");
                                        _textEditingController.clear();
                                        Navigation.toNamed(
                                          routeName: HomeScreen.routeName,
                                          arguments: value,
                                        );
                                      } else {
                                        toastDanger(
                                            context,
                                            "Gagal",
                                            homeNotifier.failure?.message ??
                                                "Gagal");
                                        _textEditingController.clear();
                                        FocusScope.of(context)
                                            .requestFocus(_focusNode);
                                      }
                                    },
                                  );
                                },
                                decoration: const InputDecoration(
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              Text(
                                "Jika scanner belum siap, silahkan klik dibawah ini!",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: blackColor,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () => FocusScope.of(context)
                                    .requestFocus(_focusNode),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isFocus ? primaryGreen : primaryRed,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    isFocus
                                        ? "Scanner sudah siap!"
                                        : "Scanner belum siap!",
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: whiteColor,
                                    ),
                                  ),
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
