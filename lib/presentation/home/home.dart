import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_test/constant/storage_constant.dart';
import 'package:interview_test/database/db_init.dart';
import 'package:interview_test/main.dart';
import 'package:interview_test/models/card_models.dart';
import 'package:interview_test/presentation/home/models/icon_config.dart';
import 'package:interview_test/presentation/home/widgets/topbar_widget.dart';
import 'package:interview_test/theme/color_theme.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<IconConfig> iconList = [];
  List<IconConfig> iconKategori = [];
  List<CardVoucher> cardVoucher = [];
  late AnimationController _controller;
  late Animation<double> _animation;
  bool bottomBarToggleTop = false;
  double navBarHeight = 80;
  bool isExpanded = false;
  IconData icon = FontAwesomeIcons.chevronUp;
  int selectedIndex = 0;
  final double _collapsedHeight = 80;
  final double _expandedHeight = 150;
  var faChevronUp = FontAwesomeIcons.chevronUp;
  var faChevronDown = FontAwesomeIcons.chevronDown;

  User? user;

  void loginCheck() async {
    await SharedPrefs.getUserId().then((v) => {
          if (v.isNotEmpty)
            {
              database!.getUserById(int.parse(v)).then((value) => {
                    setState(() {
                      user = value;
                    })
                  })
            }
        });
  }

  void _toggleExpand() {
    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    iconList.addAll(iconConfigsProdukKeuangan);
    iconKategori.addAll(iconConfigKategori);
    cardVoucher.addAll(homeCardExplore);

    loginCheck();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400), // Adjust for smoothness
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! < -4 &&
              _controller.status != AnimationStatus.forward) {
            _toggleExpand();
            setState(() {
              icon = faChevronDown;
            });
          } else if (details.primaryDelta! > 4 &&
              _controller.status != AnimationStatus.reverse) {
            _toggleExpand();
            setState(() {
              icon = faChevronUp;
            });
          }
        },
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              height: _collapsedHeight +
                  (_expandedHeight - _collapsedHeight) * _animation.value,
              color: Colors.white,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: _collapsedHeight +
                          (_expandedHeight - _collapsedHeight) *
                              _animation.value,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: ColorTheme.greyColor,
                            width: 1,
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildMenuItem(Icons.notifications, "Beranda"),
                              const SizedBox(
                                width: 10,
                              ),
                              _buildMenuItem(Icons.settings, "Cari"),
                              const SizedBox(
                                width: 10,
                              ),
                              _buildMenuItem(Icons.shopping_cart, "Keranjang"),
                           
                            ],
                          ),
                          if (_animation.value > 0.5) ...[
                            Expanded(
                              child: Opacity(
                                opacity: _animation.value,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildMenuItem(
                                        Icons.list_alt, "Daftar Transaksi"),
                                    _buildMenuItem(
                                        Icons.card_giftcard, "Voucher Saya"),
                                    _buildMenuItem(
                                        Icons.location_on, "Alamat Pengiriman"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width / 2 - 30,
                    top: -20,
                    child: Container(
                        width: 60,
                        height: 30,
                        decoration: const BoxDecoration(
                          color: ColorTheme.whiteColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: FaIcon(icon,
                            size: 20,
                            color: const Color.fromARGB(255, 13, 52, 121))),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
              child: Topbar(
            name: user?.namaLengkap ?? "",
          ))),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: ColorTheme.primaryColor,
            child: Column(
              children: [
                // const Topbar(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: ColorTheme.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          FlutterToggleTab(
                            width: 90,
                            borderRadius: 30,
                            height: 36,
                            selectedIndex: selectedIndex,
                            selectedBackgroundColors: const [
                              ColorTheme.primaryColor,
                              ColorTheme.primaryColor
                            ],
                            selectedTextStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                            unSelectedTextStyle: const TextStyle(
                                color: Color.fromARGB(87, 0, 0, 0),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            labels: const ["Payung Pribadi", "Payung Karyawan"],
                            selectedLabelIndex: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            isScroll: false,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Produk Keuangan",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GridView.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 5,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(iconList.length, (index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    iconList[index].page));
                                      },
                                      child: SizedBox(
                                        width: 60,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            iconList[index].icon,
                                            width: 30,
                                            height: 30,
                                            colorFilter: const ColorFilter.mode(
                                                ColorTheme.primaryColor,
                                                BlendMode.srcIn),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      iconList[index].label,
                                      style: const TextStyle(
                                          color: ColorTheme.blackColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                );
                              })),
                          const Text(
                            "Kategori Pilihan",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GridView.count(
                              crossAxisCount: 4,
                              mainAxisSpacing: 5,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children:
                                  List.generate(iconKategori.length, (index) {
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    iconKategori[index].page));
                                      },
                                      child: SizedBox(
                                        width: 60,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            iconKategori[index].icon,
                                            width: 30,
                                            height: 30,
                                            colorFilter: const ColorFilter.mode(
                                                ColorTheme.primaryColor,
                                                BlendMode.srcIn),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      iconKategori[index].label,
                                      style: const TextStyle(
                                          color: ColorTheme.blackColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                );
                              })),
                          const Text(
                            "Explore Wellness",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          // Card(
                          //   elevation: 0,
                          //   child: Column(
                          //     mainAxisSize: MainAxisSize.min,
                          //     children: [
                          //       SvgPicture.asset(
                          //         "assets/icons/grab.svg",
                          //         width: 50,
                          //         height: 50,
                          //       ),
                          //       Text("Voucher Digital Indomaret Rp25.000"),
                          //       SizedBox(height: 10),
                          //     ],
                          //   ),
                          // )
                          GridView.count(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 15,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            children:
                                List.generate(cardVoucher.length, (index) {
                              return Card(
                                elevation: 0,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SvgPicture.asset(
                                      cardVoucher[index].imageName,
                                      width: 50,
                                      height: 50,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Text(cardVoucher[index].title),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildMenuItem(IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: ColorTheme.greyColorTwo,
      ),
      Text(
        label,
        style: const TextStyle(
          color: ColorTheme.greyColorTwo,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
