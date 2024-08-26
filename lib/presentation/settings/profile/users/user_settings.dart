import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_test/bloc/profile/profile_event.dart';
import 'package:interview_test/bloc/profile/profile_state.dart';
import 'package:interview_test/presentation/settings/profile/users/user_edit.dart';

class UserSettings extends StatefulWidget {
  const UserSettings({super.key});

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileCubit>().getProfile();
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
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(child: BlocBuilder<ProfileCubit, ProfileEvent>(
        builder: (context, state) {
          return state.when(initial: () {
            return const SizedBox();
          }, loading: () {
            return const Center(child: CircularProgressIndicator());
          }, loaded: (data) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    data.namaLengkap,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
                    ),
                  ),
                  subtitle: const Text("Masuk dengan Google"),
                ),
                ListSettings(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => UserEditPage(
                                  userExisting: data,
                                )));
                  },
                  text: "Informasi Pribadi",
                  icon: Icons.person,
                ),
                const ListSettings(
                  text: "Syarat dan Ketentuan",
                  icon: Icons.person,
                  paddingTop: 40,
                ),
                const ListSettings(
                  text: "Bantuan",
                  icon: Icons.person,
                  paddingTop: 40,
                ),
                const ListSettings(
                  text: "Kebijakan Privasi",
                  icon: Icons.person,
                  paddingTop: 40,
                ),
                const ListSettings(
                  text: "Logout",
                  icon: Icons.person,
                  paddingTop: 40,
                ),
                const ListSettings(
                  text: "Hapus Akun",
                  icon: Icons.person,
                  paddingTop: 40,
                ),
              ],
            );
          }, error: (e) {
            return Center(
              child: Text(e.toString()),
            );
          });
        },
      )),
    );
  }
}

class ListSettings extends StatelessWidget {
  final double paddingTop;
  final String text;
  final IconData? icon;
  final Function()? onTap;
  const ListSettings({
    super.key,
    this.paddingTop = 40,
    required this.text,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 36.0, right: 36, top: paddingTop),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(105, 158, 158, 158),
                  shape: BoxShape.rectangle),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
