import 'package:absensipkl/base/common/colors.dart';
import 'package:absensipkl/base/router/navigation.dart';
import 'package:absensipkl/custom.dart';
import 'package:absensipkl/domain/models/team.dart';
import 'package:absensipkl/presentation/pages/landing/landing_screen.dart';
import 'package:absensipkl/presentation/providers/home/home_provider.dart';
import 'package:absensipkl/presentation/widgets/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void dispose() {
    _focusNode.dispose();
    _textEditingController.dispose();
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
    final Team team = ModalRoute.of(context)!.settings.arguments as Team;
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    height: 76,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  team.name,
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Kategori : ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(5, 10),
                            blurRadius: 10,
                            color: Color.fromARGB(72, 143, 143, 143),
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anggota",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Expanded(
                            child: ListView(
                              children: [
                                ListView.builder(
                                  itemCount: team.members.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 12,
                                        horizontal: 8,
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromARGB(
                                            255, 218, 231, 255),
                                        boxShadow: const [
                                          BoxShadow(
                                            offset: Offset(0, 0),
                                            blurRadius: 4,
                                            color: Color(0x499c9c9c),
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(60),
                                                  color: Colors.black,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text(
                                                "Ketua",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Ketua Tim",
                                            style: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: blackColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                                CustomContainer(
                                  title: 'Anggota',
                                  status: 'Anggota',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 400,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 4,
                          color: Color(0x499c9c9c),
                        )
                      ],
                      color: whiteColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Image.asset(
                          "assets/images/pklhummatech.png",
                          width: 200,
                        ),
                        Expanded(child: Image.asset("assets/images/tab2.png")),
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
                                      "Berhasil mengakhiri presentasi");
                                  _textEditingController.clear();
                                  Navigation.replaceUntilNamed(
                                    routeName: LandingScreen.routeName,
                                  );
                                } else {
                                  toastDanger(context, "Gagal",
                                      homeNotifier.failure?.message ?? "Gagal");
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
                          onTap: () =>
                              FocusScope.of(context).requestFocus(_focusNode),
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
      ),
    );
  }
}
