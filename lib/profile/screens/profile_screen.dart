// ignore_for_file: must_be_immutable

import 'package:ecommerce_test/util/app_assets.dart';
import 'package:ecommerce_test/util/app_color.dart';
import 'package:ecommerce_test/util/app_padding.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.secondary,
      body: Column(
        children: [
          Container(
            height: height * .2,
            color: AppColor.surface,
            child: Center(
              child: ListTile(
                contentPadding: EdgeInsets.only(top: 30, left: width * .08),
                leading: const CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(ThemeAssets.profilepic),
                ),
                title: Text("userModel.name"),
                subtitle: Text("userModel.email"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * .05, vertical: height * .03),
            child: Column(
              children: [
                ProfileTile(
                    title: 'My Orders',
                    subTitle: "You already have 12 orders",
                    onTap: () {
                      // Get.to(() => const MyOrderScreen());
                    }),
                ProfileTile(
                    title: 'Address',
                    subTitle: 'Save address for a free checkout',
                    onTap: () {
                      // Get.to(() => MyAddressScreen());
                    }),
                ProfileTile(
                    title: 'Settings',
                    subTitle: 'Name, Email, Password',
                    onTap: () {
                      // Get.to(() => SettingScreen());
                    }),
                ProfileTile(
                    title: 'Help Center',
                    subTitle: 'Help regarding your latest purchase',
                    onTap: () {}),
                const AppPadding(
                  dividedBy: 2,
                ),
                SizedBox(
                  height: height * .07,
                  width: width,
                  child: OutlinedButton(
                    onPressed: () async {
                      // await FirebaseAuth.instance.signOut();
                      // Get.offAll(Signin());
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColor.primary, side: BorderSide(width: 2, color: AppColor.primary),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Log out'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  String title;
  String subTitle;
  Function() onTap;
  ProfileTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: height * .13,
        decoration: BoxDecoration(
            color: AppColor.surface, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: ListTile(
              title: Text(title),
              subtitle: Text(
                subTitle,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.navigate_next),
              )),
        ),
      ),
    );
  }
}
