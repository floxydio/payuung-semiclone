import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:interview_test/presentation/home/widgets/greetings_widget.dart';
import 'package:interview_test/presentation/settings/profile/register/register.dart';
import 'package:interview_test/presentation/settings/profile/users/user_settings.dart';
import 'package:interview_test/theme/color_theme.dart';

class Topbar extends StatefulWidget {
  final String? name;
  const Topbar({
    super.key,
    required this.name,
  });

  @override
  State<Topbar> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorTheme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getGreeting(),
                  style: const TextStyle(
                      color: ColorTheme.whiteColor, fontSize: 16),
                ),
                Text(widget.name != "" ? widget.name! : "Guest",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorTheme.whiteColor))
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.notifications_none,
                  color: ColorTheme.whiteColor,
                  size: 35,
                ),
                const SizedBox(
                  width: 15,
                ),
                widget.name != ""
                    ? InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>  const UserSettings()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U"),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ProfileRegisterPage()));
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.circleUser,
                          size: 35,
                          color: ColorTheme.whiteColor,
                        ),
                      )
              ],
            )
          ],
        ),
      ),
    );
  }
}
