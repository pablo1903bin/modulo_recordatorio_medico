import 'package:flutter/material.dart';

import '../../../../data/providers/auth/state/user_auth_state.dart';
import '../../../global/widgets/custom_app_bar.dart';
import '../../../global/widgets/drawer_widget.dart';
import '../../../mixin/controllers_mixin.dart';
import '../../../routes/route_path.dart';

class UserDetailsScreen extends StatelessWidget with ControllersMixin {
  const UserDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    UserAuthState user = getAuthController(context).state;

    return Scaffold(
      appBar: const CustomAppBar(
        title: RoutePath.userDetails,
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username: ${user.userResponse!.username}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Nombre: ${user.userResponse!.username}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${user.userResponse!.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 60),

            //uso del controller user

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
