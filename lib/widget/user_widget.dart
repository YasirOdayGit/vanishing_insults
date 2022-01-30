import 'package:flutter/material.dart';
import 'package:vanishing_insults/constants/program_config.dart';
import 'package:vanishing_insults/models/user_model.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
    required this.width,
    required this.user,
  }) : super(key: key);

  final double width;
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(defaultPadding),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    user.profilePicture!,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: SizedBox(
                    width: width * 0.55,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.firstName!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto",
                            fontSize: 20,
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: user.insulted == true
                                ? "Insulted"
                                : "Not Insulted",
                            style: TextStyle(
                                color: textGray,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                overflow: TextOverflow.clip),
                          ),
                          TextSpan(
                              text: " - ",
                              style: TextStyle(
                                  color: textGray,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  overflow: TextOverflow.clip)),
                          TextSpan(
                            text: user.opened == true ? "opened" : "Not opened",
                            style: TextStyle(
                                color: textGray,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                overflow: TextOverflow.clip),
                          ),
                          TextSpan(
                              text: " - ",
                              style: TextStyle(
                                  color: textGray,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Roboto",
                                  overflow: TextOverflow.clip)),
                          TextSpan(
                            text: user.streak.toString() + " 🔥",
                            style: TextStyle(
                                color: textGray,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                overflow: TextOverflow.clip),
                          )
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Image(
                  image: AssetImage("assets/insult.png"),
                ))
          ],
        ));
  }
}
