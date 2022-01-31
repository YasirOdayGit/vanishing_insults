import 'package:flutter/material.dart';
import 'package:vanishing_insults/constants/program_config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: NetworkImage(yasir.profilePicture!),
                width: size.width,
              )),
          Positioned(
              left: size.width * 0.025,
              top: size.width * 0.025,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ))),
          Positioned(
              right: size.width * 0.025,
              top: size.width * 0.025,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ))),
          Positioned(
              top: size.height / 3.8,
              child: Container(
                padding: EdgeInsets.all(defaultPadding),

                width: size.width,
                // height: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  NetworkImage(yasir.profilePicture!),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  yasir.firstName! + " " + yasir.secondName!,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  yasir.userName!,
                                  style: TextStyle(
                                      color: textGray,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                      overflow: TextOverflow.ellipsis),
                                )
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: textGray,
                              size: 24,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    const AccountField(
                      description: "total insults",
                      value: "20",
                    ),
                    const AccountField(
                      description: "longest streak",
                      value: "15",
                    ),
                    const AccountField(
                      description: "total friends",
                      value: "2",
                    ),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}

class AccountField extends StatelessWidget {
  const AccountField({Key? key, required this.description, required this.value})
      : super(key: key);
  final String value;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      margin: EdgeInsets.all(defaultPadding / 2),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      decoration: BoxDecoration(
        color: grayBack,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            description,
            style: TextStyle(color: textGray, fontSize: 16),
          ),
          Text(value, style: TextStyle(color: textGray, fontSize: 16))
        ],
      ),
    );
  }
}
