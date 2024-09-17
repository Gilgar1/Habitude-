import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DrawerHeader(
          // decoration: BoxDecoration(
          //     //   color: Colors.blue,
          //     ),
          child: Text(
            'Change the Theme',
            style: TextStyle(
              fontSize: 23,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Center(
          child: CupertinoSwitch(
            value: Provider.of<ThemeProvider>(context).isDarkMode,
            onChanged: (value) =>
                Provider.of<ThemeProvider>(context, listen: false)
                    .toggleTheme(),
          ),
        ),
      ],
    );
  }
}
