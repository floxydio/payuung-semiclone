import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_test/constant/storage_constant.dart';
import 'package:interview_test/database/db_init.dart';
import 'package:interview_test/presentation/home/home.dart';
import 'package:interview_test/presentation/settings/profile/widgets/mandatory_field.dart';
import 'package:interview_test/theme/color_theme.dart';

class ProfileRegisterPage extends StatefulWidget {
  const ProfileRegisterPage({super.key});

  @override
  State<ProfileRegisterPage> createState() => _ProfileRegisterPageState();
}

class _ProfileRegisterPageState extends State<ProfileRegisterPage> {
  final namaController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final jenisKelaminController = TextEditingController();
  final noHpController = TextEditingController();
  var database = AppDatabase();

  var isCheckTerms = false;

  @override
  void dispose() {
    super.dispose();
    namaController.dispose();
    tanggalLahirController.dispose();
    jenisKelaminController.dispose();
    noHpController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/rocket.svg",
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text("1 Langkah lagi...",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 30,
                ),
                const MandatoryField(
                  fieldName: "Nama Lengkap",
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: namaController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "Nama Lengkap"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MandatoryField(
                  fieldName: "TANGGAL LAHIR",
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: tanggalLahirController,
                  readOnly: true,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2100),
                            ).then((v) => {
                                  if (v != null)
                                    {
                                      tanggalLahirController.text =
                                          v.toString().split(" ")[0]
                                    }
                                });
                          },
                          child: const Icon(Icons.calendar_today)),
                      border: const OutlineInputBorder(),
                      hintText: "Pilih"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MandatoryField(fieldName: 'JENIS KELAMIN'),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  child: DropdownButtonFormField<String>(
                    value: jenisKelaminController.text.isEmpty
                        ? null
                        : jenisKelaminController.text,
                    onChanged: (String? newValue) {
                      setState(() {
                        jenisKelaminController.text = newValue!;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Pilih Jenis Kelamin',
                      border: InputBorder.none,
                    ),
                    items: <String>['Laki-laki', 'Perempuan']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MandatoryField(fieldName: 'NO. HANDPHONE'),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: noHpController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: "No. Handphone"),
                ),
                // Terms
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isCheckTerms,
                        onChanged: (v) {
                          setState(() {
                            isCheckTerms = v!;
                          });
                        }),
                    Flexible(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Saya telah membaca dan menyetujui ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: 'Syarat & Ketentuan',
                              style: TextStyle(
                                  color: ColorTheme.primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: namaController.text.isEmpty ||
                                  tanggalLahirController.text.isEmpty ||
                                  jenisKelaminController.text.isEmpty ||
                                  noHpController.text.isEmpty
                              ? ColorTheme.primaryColorSecondary
                              : ColorTheme.primaryColor),
                      onPressed: namaController.text.isEmpty ||
                              tanggalLahirController.text.isEmpty ||
                              jenisKelaminController.text.isEmpty ||
                              noHpController.text.isEmpty
                          ? () {}
                          : () async {
                              var result = await database
                                  .into(database.users)
                                  .insert(UsersCompanion.insert(
                                      namaLengkap: namaController.text,
                                      tanggalLahir: tanggalLahirController.text,
                                      jenisKelamin: jenisKelaminController.text,
                                      noHp: noHpController.text));
                              if (result != 0) {
                                if (!context.mounted) return;
                                SharedPrefs.setUserId(result.toString());
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => const HomePage()));
                              }
                            },
                      child: const Text(
                        "Buat Akun",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
