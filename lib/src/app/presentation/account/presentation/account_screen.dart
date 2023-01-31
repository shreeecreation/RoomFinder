import 'package:flutter/material.dart';
import 'package:shary/src/core/constants/mediaquery.dart';
import 'package:shary/src/core/extension/color_extension.dart';
import 'package:shary/src/core/themes/appcolors.dart';
import 'package:shary/src/core/themes/appstyles.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(50)),
              height: MediaQuery.of(context).size.height / 2.2,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 30),
            editProfile(context),
            differrentButtons(context),
            GestureDetector(
              onTap: () {
                // TODO edit profile logic
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 233, 233),
                  borderRadius: BorderRadius.circular(18),
                ),
                width: MediaQuery.of(context).size.width - 20,
                height: 90,
                child: Center(
                  child: ListTile(
                      leading: const Icon(Icons.help, color: AppColors.goodMorning),
                      title: Text("Get ready for Featured?", style: AppStyles.text13PxBold.textGrey),
                      subtitle: Text("Go For Premium Service", style: AppStyles.text16PxBold.textDark),
                      trailing: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: AppColors.goodMorning),
                          child: Text("Upgrade", style: AppStyles.text13Px.white))),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
        Container(
            decoration: BoxDecoration(color: AppColors.goodMorning, borderRadius: BorderRadius.circular(12)),
            height: 200,
            width: MediaQuery.of(context).size.width),
        SizedBox(
            child: Column(children: [
          SizedBox(
              width: mediaWidth,
              height: 100,
              child: Align(alignment: Alignment.bottomCenter, child: Text("Account", style: AppStyles.text24Px.white))),

          ///// Propoerty Card //////
          const SizedBox(height: 34),
          findPlaceCard(context),

          const SizedBox(height: 11),
          Text("Shristi Dawadi", style: AppStyles.text20PxSemiBold.textDark),
          const SizedBox(height: 3),

          Text("10 Applied | Kathmandu", style: AppStyles.text16PxSemiBold.textGrey),
        ]))
      ]),
    ));
  }

  Widget differrentButtons(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ListTile(
            title: const Text("Notifications"),
            leading: const Icon(Icons.notifications_outlined, color: AppColors.goodMorning),
            onTap: () {
              //TODO Routing to notification page
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ListTile(
            title: const Text("Recent Viewed"),
            leading: const Icon(Icons.remove_red_eye_rounded, color: AppColors.goodMorning),
            onTap: () {
              //TODO Routing to recent viewed page
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ListTile(
            title: const Text("Get Help"),
            leading: const Icon(Icons.forum, color: AppColors.goodMorning),
            onTap: () {
              //TODO Routing to helping page
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ListTile(
            title: const Text("About Us"),
            leading: const Icon(Icons.help, color: AppColors.goodMorning),
            onTap: () {
              //TODO Routing to About Us page
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.2,
          child: ListTile(
            title: const Text("Sign Out"),
            leading: const Icon(Icons.logout, color: AppColors.goodMorning),
            onTap: () {
              //TODO Routing to SignOut page
            },
          ),
        ),
      ],
    );
  }

  Widget editProfile(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO edit profile logic
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 236, 233, 233),
          borderRadius: BorderRadius.circular(18),
        ),
        width: MediaQuery.of(context).size.width - 50,
        height: 120,
        child: Center(
          child: ListTile(
              leading: const Icon(Icons.person, color: AppColors.goodMorning),
              title: Text("Edit Profile", style: AppStyles.text16PxBold.textBlue),
              subtitle: const Text("Edit all the basic profile information associated with your profile")),
        ),
      ),
    );
  }
}

Widget findPlaceCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: SizedBox(
        // decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(360)),
        height: 150,
        width: MediaQuery.of(context).size.width / 2,
        child: Container(
          decoration: const BoxDecoration(color: AppColors.goodMorning, shape: BoxShape.circle),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 58,
                backgroundImage: const AssetImage("assets/images/1.png"),
                child: Stack(children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        child: Icon(Icons.add, color: AppColors.goodMorning),
                      ),
                    ),
                  ),
                ]),
              )),
        )),
  );
}
