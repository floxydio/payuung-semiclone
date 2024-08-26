import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_test/database/db_init.dart';
import 'package:interview_test/presentation/home/home.dart';
import 'package:interview_test/presentation/settings/profile/widgets/mandatory_field.dart';
import 'package:interview_test/theme/color_theme.dart';
import 'package:progress_bar_steppers/steppers.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class UserEditPage extends StatefulWidget {
  final User userExisting;
  const UserEditPage({super.key, required this.userExisting});

  @override
  State<UserEditPage> createState() => _UserEditPageState();
}

class _UserEditPageState extends State<UserEditPage> {
  var currentStep = 1;
  var totalSteps = 0;

  final namaController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final jenisKelaminController = TextEditingController();
  final noHpController = TextEditingController();
  final pendidikanController = TextEditingController();
  final statusPernikahanController = TextEditingController();

  // alamat pribadi
  final nikController = TextEditingController();
  final alamatController = TextEditingController();
  final provinsiController = TextEditingController();
  final kotaController = TextEditingController();
  final kecamatanController = TextEditingController();
  final kelurahanController = TextEditingController();
  final kodePosController = TextEditingController();

  // informasi
  final namaPerusahaan = TextEditingController();
  final alamatUsaha = TextEditingController();
  final jabatan = TextEditingController();
  final lamaBekerja = TextEditingController();
  final sumberPendapatan = TextEditingController();
  final pendapatanKotorPertahun = TextEditingController();
  final namaBank = TextEditingController();
  final cabangBank = TextEditingController();
  final nomorRekening = TextEditingController();
  final namaPemilikRekening = TextEditingController();

  @override
  void initState() {
    super.initState();
    startExisting();
  }

  void startExisting() {
    namaController.text = widget.userExisting.namaLengkap;
    tanggalLahirController.text = widget.userExisting.tanggalLahir;
    jenisKelaminController.text = widget.userExisting.jenisKelamin;
    noHpController.text = widget.userExisting.noHp;
    pendidikanController.text = widget.userExisting.pendidikan ?? '';
    statusPernikahanController.text =
        widget.userExisting.statusPernikahan ?? '';

    nikController.text = widget.userExisting.nik ?? '';
    alamatController.text = widget.userExisting.alamat ?? '';
    provinsiController.text = widget.userExisting.provinsi ?? '';
    kotaController.text = widget.userExisting.kota ?? '';
    kecamatanController.text = widget.userExisting.kecamatan ?? '';
    kelurahanController.text = widget.userExisting.kelurahan ?? '';
    kodePosController.text = widget.userExisting.kodePos?.toString() ?? '';

    namaPerusahaan.text = widget.userExisting.namaUsaha ?? '';
    alamatUsaha.text = widget.userExisting.alamatUsaha ?? '';
    jabatan.text = widget.userExisting.jabatan ?? '';
    lamaBekerja.text = widget.userExisting.lamaBekerja ?? '';
    sumberPendapatan.text = widget.userExisting.sumberPendapatan ?? '';
    pendapatanKotorPertahun.text =
        widget.userExisting.pendapatanKotorPertahun ?? '';
    namaBank.text = widget.userExisting.namaBank ?? '';
    cabangBank.text = widget.userExisting.cabangBank ?? '';
    nomorRekening.text = widget.userExisting.nomorRekening ?? '';
    namaPemilikRekening.text = widget.userExisting.namaPemilikRekening ?? '';
  }

  @override
  void dispose() {
    super.dispose();
    namaController.dispose();
    tanggalLahirController.dispose();
    jenisKelaminController.dispose();
    noHpController.dispose();
    pendidikanController.dispose();
    statusPernikahanController.dispose();

    nikController.dispose();
    alamatController.dispose();
    provinsiController.dispose();
    kotaController.dispose();
    kecamatanController.dispose();
    kelurahanController.dispose();
    kodePosController.dispose();

    namaPerusahaan.dispose();
    alamatUsaha.dispose();
    jabatan.dispose();
    lamaBekerja.dispose();
    sumberPendapatan.dispose();
    pendapatanKotorPertahun.dispose();
    namaBank.dispose();
    cabangBank.dispose();
    nomorRekening.dispose();
    namaPemilikRekening.dispose();
  }

  void _showImageSourceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.camera);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  Navigator.of(context).pop();
                  _pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = '${directory.path}/ktp_upload.jpg';

      final File imageFile = File(pickedFile.path);
      final File savedImage = await imageFile.copy(imagePath);

      // print('Image saved at: ${savedImage.path}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Informasi Pribadi",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Steppers(
                  stepBarStyle: StepperStyle(
                      activeBorderColor: ColorTheme.primaryColor,
                      activeColor: ColorTheme.primaryColor),
                  currentStep: currentStep,
                  direction: StepperDirection.horizontal,
                  labels: [
                    StepperData(
                      label: "Biodata Diri",
                    ),
                    StepperData(label: "Alamat\nPribadi"),
                    StepperData(label: "Informasi\nPerusahaan")
                  ],
                ),

                // Biodata Diri

                currentStep == 1
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 12),
                        child: Column(
                          children: [
                            const MandatoryField(
                              fieldName: "Nama Lengkap",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: namaController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Nama Lengkap"),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                items: <String>[
                                  'Laki-laki',
                                  'Perempuan'
                                ].map<DropdownMenuItem<String>>((String value) {
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
                                  border: OutlineInputBorder(),
                                  hintText: "No. Handphone"),
                            ),
                            // Terms
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(
                                isRequired: false, fieldName: 'PENDIDIKAN'),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: pendidikanController.text.isEmpty
                                    ? null
                                    : pendidikanController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    pendidikanController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Pendidikan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  'SD',
                                  'SMP',
                                  'SMA',
                                  'D3',
                                  'S1',
                                  'S2',
                                  'S3'
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                                isRequired: false,
                                fieldName: 'STATUS PERNIKAHAN'),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: statusPernikahanController.text.isEmpty
                                    ? null
                                    : statusPernikahanController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    statusPernikahanController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Pendidikan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  'Belum Menikah',
                                  'Menikah',
                                  'Duda',
                                  'Janda'
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12.0, bottom: 12),
                              child: SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: ColorTheme.primaryColor),
                                  onPressed: () {
                                    setState(() {
                                      currentStep = 2;
                                    });
                                  },
                                  child: const Text(
                                    "Selanjutnya",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),

                // Alamat Pribadi
                currentStep == 2
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 12),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () async {
                                _showImageSourceDialog(context);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: ColorTheme.primaryColorSecondary,
                                        shape: BoxShape.rectangle),
                                    child: const FaIcon(FontAwesomeIcons.idCard,
                                        color: ColorTheme.primaryColor),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text("Upload KTP"),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            const MandatoryField(fieldName: "NIK"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: nikController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "NIK"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(
                                fieldName: "ALAMAT SESUAI KTP"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: alamatController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Alamat"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(fieldName: "PROVINSI"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: provinsiController.text.isEmpty
                                    ? null
                                    : provinsiController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    provinsiController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Provinsi',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Jawa Barat",
                                  "Jawa Tengah",
                                  "Jawa Timur",
                                  "DKI Jakarta",
                                  "Banten",
                                  "Bali",
                                  "Nusa Tenggara Barat",
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(fieldName: "KOTA/KABUPATEN"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: kotaController.text.isEmpty
                                    ? null
                                    : kotaController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    kotaController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Kota/Kabupaten',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Bandung",
                                  "Jakarta",
                                  "Bogor",
                                  "Depok"
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(fieldName: "KECAMATAN"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: kecamatanController.text.isEmpty
                                    ? null
                                    : kecamatanController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    kecamatanController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Kecamatan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Cibiru",
                                  "Cileunyi",
                                  "Cimahi",
                                  "Cimahi Utara"
                                      "Sukmajaya",
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(fieldName: "KELURAHAN"),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: kelurahanController.text.isEmpty
                                    ? null
                                    : kelurahanController.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    kelurahanController.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Kelurahan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Cibiru",
                                  "Cileunyi",
                                  "Cimahi",
                                  "Cimahi Utara"
                                      "Sukmajaya",
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(fieldName: "KODE POS"),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: kodePosController,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Kode Pos"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey),
                                          onPressed: () {
                                            setState(() {
                                              currentStep = 1;
                                            });
                                          },
                                          child: const Text(
                                            "Kembali",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ColorTheme.primaryColor),
                                          onPressed: () {
                                            setState(() {
                                              currentStep = 3;
                                            });
                                          },
                                          child: const Text(
                                            "Selanjutnya",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    : const SizedBox(),

                currentStep == 3
                    ? Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 12),
                        child: Column(
                          children: [
                            const MandatoryField(
                              fieldName: "NAMA USAHA/PERUSAHAAN",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: namaPerusahaan,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Nama Perusahaan"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(
                              fieldName: "ALAMAT USAHA/PERUSAHAAN",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: alamatUsaha,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Alamat Usaha"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(
                              fieldName: "JABATAN",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value:
                                    jabatan.text.isEmpty ? null : jabatan.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    jabatan.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Jabatan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Direktur",
                                  "Manager",
                                  "Supervisor",
                                  "Staff",
                                  "Karyawan"
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                              fieldName: "LAMA BEKERJA",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: lamaBekerja.text.isEmpty
                                    ? null
                                    : lamaBekerja.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    lamaBekerja.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Lama Bekerja',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Kurang dari 1 tahun",
                                  "1 tahun",
                                  "2 tahun",
                                  "3 tahun",
                                  "4 tahun",
                                  "5 tahun",
                                  "6 tahun",
                                  "7 tahun",
                                  "8 tahun",
                                  "9 tahun",
                                  "10 tahun",
                                  "Lebih dari 10 tahun"
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                              fieldName: "SUMBER PENDAPATAN",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: sumberPendapatan.text.isEmpty
                                    ? null
                                    : sumberPendapatan.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    sumberPendapatan.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Sumber Pendapatan',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Gaji",
                                  "Hasil Usaha",
                                  "Hasil Investasi",
                                  "Lainnya"
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                              fieldName: "PENDAPATAN KOTOR PERTAHUN",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: pendapatanKotorPertahun.text.isEmpty
                                    ? null
                                    : pendapatanKotorPertahun.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    pendapatanKotorPertahun.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Pendapatan Kotor Pertahun',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "Kurang dari 50 juta",
                                  "50 juta - 100 juta",
                                  "100 juta - 200 juta",
                                  "200 juta - 500 juta",
                                  "500 juta - 1 miliar",
                                  "Lebih dari 1 miliar"
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                              fieldName: "NAMA BANK",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5)),
                              child: DropdownButtonFormField<String>(
                                value: namaBank.text.isEmpty
                                    ? null
                                    : namaBank.text,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    namaBank.text = newValue!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Pilih Bank',
                                  border: InputBorder.none,
                                ),
                                items: <String>[
                                  "BCA",
                                  "BNI",
                                  "BRI",
                                  "BSI",
                                  "MANDIRI",
                                  "PERMATA",
                                ].map<DropdownMenuItem<String>>((String value) {
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
                            const MandatoryField(
                              fieldName: "CABANG BANK",
                              isRequired: false,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: cabangBank,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Cabang Bank"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const MandatoryField(
                              fieldName: "NOMOR REKENING",
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: nomorRekening,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Nomor Rekening"),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.grey),
                                          onPressed: () {
                                            setState(() {
                                              currentStep = 2;
                                            });
                                          },
                                          child: const Text(
                                            "Kembali",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        height: 60,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  ColorTheme.primaryColor),
                                          onPressed: () async {
                                            var userModel = User(
                                              id: widget.userExisting.id,
                                              namaLengkap: namaController.text,
                                              tanggalLahir:
                                                  tanggalLahirController.text,
                                              jenisKelamin:
                                                  jenisKelaminController.text,
                                              noHp: noHpController.text,
                                              pendidikan:
                                                  pendidikanController.text,
                                              statusPernikahan:
                                                  statusPernikahanController
                                                      .text,
                                              nik: nikController.text,
                                              alamat: alamatController.text,
                                              provinsi: provinsiController.text,
                                              kota: kotaController.text,
                                              kecamatan:
                                                  kecamatanController.text,
                                              kelurahan:
                                                  kelurahanController.text,
                                              kodePos: int.tryParse(
                                                      kodePosController.text) ??
                                                  0,
                                              namaUsaha: namaPerusahaan.text,
                                              alamatUsaha: alamatUsaha.text,
                                              jabatan: jabatan.text,
                                              lamaBekerja: lamaBekerja.text,
                                              sumberPendapatan:
                                                  sumberPendapatan.text,
                                              pendapatanKotorPertahun:
                                                  pendapatanKotorPertahun.text,
                                              namaBank: namaBank.text,
                                              cabangBank: cabangBank.text,
                                              nomorRekening: nomorRekening.text,
                                              namaPemilikRekening:
                                                  namaPemilikRekening.text,
                                            );

                                            await AppDatabase()
                                                .updateUser(userModel)
                                                .then((v) {
                                              if (v != 0) {
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            const HomePage()));
                                              }
                                            });
                                          },
                                          child: const Text(
                                            "Selesai",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ));
  }
}
