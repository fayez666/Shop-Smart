import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopsmart_users/providers/them_provider.dart';
import 'package:shopsmart_users/services/assets_manager.dart';
import 'package:shopsmart_users/widgets/custom_list_tile.dart';
import 'package:shopsmart_users/widgets/subtitle_text.dart';
import 'package:shopsmart_users/widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Image.asset(AssetsManager.shoppingCart),
        title: const Text('Profile Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Visibility(
                visible: false,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TitlesTextWidget(
                    'any thing',
                    label: 'Please Login to your account',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Colors.green,
                        width: 3.0,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitlesTextWidget(
                        'User Name',
                        label: 'Abdullah Fayez',
                      ),
                      SubtitleTextWidget(
                        label: 'abdalluhfayez420@gmail.com',
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TitlesTextWidget('gneral', label: "General"),
              const SizedBox(
                height: 20.0,
              ),
              CustomListTile(
                imagePath: AssetsManager.orderSvg,
                label: "All Order",
                onTap: () {},
              ),
              CustomListTile(
                imagePath: AssetsManager.wishlistSvg,
                label: "Wish List",
                onTap: () {},
              ),
              CustomListTile(
                imagePath: AssetsManager.recent,
                label: "Viewed recently",
                onTap: () {},
              ),
              CustomListTile(
                imagePath: AssetsManager.address,
                label: "Address",
                onTap: () {},
              ),
              const Divider(
                thickness: 1.0,
              ),
              const TitlesTextWidget('account', label: "Settings"),
              SwitchListTile(
                secondary: Image.asset(AssetsManager.theme, height: 30),
                value: themProvider.isDarkMode,
                onChanged: (value) {
                  themProvider.setDarkTheme(isDarkMode: value);
                },
                title: Text(
                    themProvider.isDarkMode ? 'Dark Theme' : 'Light Theme'),
              ),
              const Divider(
                thickness: 1.0,
              ),
              const TitlesTextWidget('help', label: "Others"),
              CustomListTile(
                imagePath: AssetsManager.privacy,
                label: "Privacy & Policy",
                onTap: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.login),
                  label: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
