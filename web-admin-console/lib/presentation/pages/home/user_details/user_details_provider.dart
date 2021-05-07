import 'package:agenda/application/users/users_details/user_details_bloc.dart';
import 'package:agenda/presentation/pages/home/user_details/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//appart cui villejuif paris villejuif
//adad ivry

class UserDetailsProvider extends StatelessWidget {
  const UserDetailsProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 2,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: BlocConsumer<UserDetailsBloc, UserDetailsState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const Center(
                      child: Text(
                        "Please select a user",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    userSelected: (user) => UserInfo(user: user.user),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
