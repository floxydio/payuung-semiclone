import 'package:interview_test/presentation/home/feature/produk_keuangan/urun/screens/urun_main.dart';

class IconConfig {
  final String icon;
  final dynamic page;
  final String label;
  final bool isNew;

  IconConfig(this.icon, this.page, this.label, {this.isNew = false});
}

List<IconConfig> iconConfigsProdukKeuangan = [
  IconConfig("assets/icons/home_icon.svg", const UrunPage(), "Urun"),
  IconConfig("assets/icons/home_icon.svg", '', "Pembiayaan Porsi Haji"),
  IconConfig("assets/icons/home_icon.svg", '', "Financial Check Up"),
  IconConfig("assets/icons/home_icon.svg", '', "Asuransi Mobil"),
  IconConfig("assets/icons/home_icon.svg", '', "Asuransi Properti"),
];

List<IconConfig> iconConfigKategori = [
  IconConfig("assets/icons/home_icon.svg", '', "Hobi"),
  IconConfig("assets/icons/home_icon.svg", '', "Merchandise"),
  IconConfig("assets/icons/home_icon.svg", '', "Gaya Hidup Sehat"),
  IconConfig("assets/icons/home_icon.svg", '', "Konseling & Rohani"),
  IconConfig("assets/icons/home_icon.svg", '', "Self Development"),
  IconConfig("assets/icons/home_icon.svg", '', "Perencanaan Keuangan"),
  IconConfig("assets/icons/home_icon.svg", '', "Konsultasi Medis"),
  IconConfig("assets/icons/home_icon.svg", '', "Lihat Semua"),
];
