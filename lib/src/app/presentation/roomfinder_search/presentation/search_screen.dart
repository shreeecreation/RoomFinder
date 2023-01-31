import 'package:flutter/material.dart';
import 'package:shary/src/core/constants/mediaquery.dart';
import 'package:shary/src/core/extension/color_extension.dart';
import 'package:shary/src/core/themes/appcolors.dart';
import 'package:shary/src/core/themes/appstyles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(color: AppColors.goodMorning, borderRadius: BorderRadius.circular(12)),
          height: 200,
          width: MediaQuery.of(context).size.width,
        ),
        SizedBox(
            child: Column(children: [
          SizedBox(
              width: mediaWidth,
              height: 100,
              child: Align(alignment: Alignment.bottomCenter, child: Text("Room Finder", style: AppStyles.text24Px.white))),

          ///// Property Card //////
          const SizedBox(height: 34),
          findPlaceCard(context),
          const SizedBox(height: 21),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Text("Locations", style: AppStyles.text18PxMedium),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 170, childAspectRatio: 1, crossAxisSpacing: 20, mainAxisSpacing: 20),
                  itemCount: 5,
                  itemBuilder: (BuildContext ctx, index) {
                    return gridLocation();
                  }),
            ),
          ),
        ]))
      ]),
    ));
  }

  Widget gridLocation() {
    return Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/1.png"), fit: BoxFit.fill)),
        height: 150,
        width: 150,
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Lalitpur", style: AppStyles.text16PxSemiBold.white),
                  Text("10 Found", style: AppStyles.text13PxSemiBold.white),
                ],
              ),
            )));
  }
}

Widget findPlaceCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(12)),
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 24),
            Row(children: [const SizedBox(width: 40), Text("Advance Search", style: AppStyles.text18PxMedium.textDark)]),
            const SizedBox(height: 14),

            ///// TextField  for address city//////
            Row(
              children: [
                const SizedBox(width: 24),
                SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.location_on, color: Color(0xFF7472E0)),
                          hintText: "Enter an address or city name",
                          hintStyle: AppStyles.text16Px.textGrey,
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7))),
                ),
                const SizedBox(width: 24)
              ],
            ),
            ///// TextField  for price range //////
            const SizedBox(height: 10),

            Row(
              children: [
                const SizedBox(width: 24),
                SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.attach_money, color: Color(0xFF7472E0)),
                          hintText: "Enter price range",
                          hintStyle: AppStyles.text16Px.textGrey,
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7))),
                ),
                const SizedBox(width: 24)
              ],
            ),
            ///// TextField  for resident type //////
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 24),
                SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.menu, color: Color(0xFF7472E0)),
                          hintText: "Resident Type",
                          hintStyle: AppStyles.text16Px.textGrey,
                          filled: true,
                          fillColor: const Color(0xFFF7F7F7))),
                ),
                const SizedBox(width: 24)
              ],
            ),

            ///// Search//////

            const SizedBox(height: 12),
            SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width - 80,
                child: ElevatedButton(
                    onPressed: () {
                      //TODO Searching logic Here
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.goodMorning, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
                    child: const Text("Search Now", style: TextStyle(color: Colors.white, fontSize: 14)))),
          ],
        )),
  );
}
