import 'package:agenda/application/details/details_bloc.dart';
import 'package:agenda/application/selector/selector_bloc.dart';
import 'package:agenda/presentation/pages/home/details/widgets/role_info.dart';
import 'package:agenda/presentation/pages/home/details/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsProvider extends StatelessWidget {
  const DetailsProvider({Key key}) : super(key: key);

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
              child: BlocBuilder<DetailsBloc, DetailsState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const Center(
                      child: Text(
                        "Please select an item on the left panel.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    userSelected: (user) => UserInfo(
                      user: user.user,
                      onAddRoleTapped: () => context
                          .read<SelectorBloc>()
                          .add(const SelectorEvent.rolesShowed()),
                    ),
                    roleSelected: (role) => RoleInfo(role: role.role),
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
