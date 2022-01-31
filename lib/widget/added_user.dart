import 'package:flutter/material.dart';
import 'package:vanishing_insults/models/user_model.dart';

class AddedUserWidget extends StatelessWidget {
  const AddedUserWidget({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(user.profilePicture!),
          radius: 30,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 5,
              ),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    user.firstName! + " " + user.secondName!,
                    maxLines: 1,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 32,
          height: 32,
          child: IconButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              icon: const Icon(
                Icons.clear,
                color: Colors.red,
              )),
        ),
      ],
    );
  }
}
