import 'package:flutter/material.dart';
import 'package:shary/src/core/constants/mediaquery.dart';
import 'package:shary/src/core/extension/color_extension.dart';
import 'package:shary/src/core/themes/appcolors.dart';
import 'package:shary/src/core/themes/appstyles.dart';

class RoomFinderScreen extends StatelessWidget {
  const RoomFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.goodMorning, borderRadius: BorderRadius.circular(12)),
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                    width: mediaWidth,
                    height: 100,
                    child: Align(alignment: Alignment.bottomCenter, child: Text("Room Finder", style: AppStyles.text24Px.white))),

                ///// Propoerty Card //////
                const SizedBox(height: 34),
                findPlaceCard(context),
                const SizedBox(height: 21),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Recently Added Properties", style: AppStyles.text18PxMedium),
                      Text("1040 Results  ", style: AppStyles.text12Px),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                ////// Room View Card //////
                roomCardView(context),

                const SizedBox(height: 10),
                ////// Room View Card //////
                roomCardView(context),

                const SizedBox(height: 10),
                ////// Room View Card //////
                roomCardView(context)
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget roomCardView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Card(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      Image.asset("assets/images/1.png", fit: BoxFit.fitHeight, height: 130),
                      const SizedBox(width: 20),
                      Stack(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("1 Big Hall at Lalitpur",
                                style: TextStyle(fontSize: 16, overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w600)),
                            Text("Mahalaxmi, Lalitpur", style: AppStyles.text12PxMedium.textGrey),
                            const SizedBox(height: 5),
                            Row(children: [Text("Rs.8000", style: AppStyles.text16PxMedium.textBlue), const Text("/ per month")])
                          ],
                        ),

                        ////// Foooter of the card View
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              children: [
                                const Icon(Icons.location_on_sharp, color: AppColors.goodMorning, size: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("1.2 km from Gwarko", style: AppStyles.text12Px.textGrey),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        const Icon(Icons.circle, color: AppColors.goodMorning, size: 10),
                                        const SizedBox(width: 5),
                                        Text("Available", style: AppStyles.text12Px.textGrey)
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ])
                    ],
                  ),
                ),
              ))),
    );
  }

  Widget findPlaceCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
          decoration: BoxDecoration(color: const Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(12)),
          height: 220,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(children: [const SizedBox(width: 40), Text("Find a property anywhere.", style: AppStyles.text18PxMedium.textDark)]),
              const SizedBox(height: 14),

              ///// TextField //////
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

              ///// Search//////

              const SizedBox(height: 12),
              SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 80,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.goodMorning, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
                      child: const Text("Search Now", style: TextStyle(color: Colors.white, fontSize: 14)))),
              const SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [Text("Advanced Search", style: TextStyle(color: AppColors.goodMorning)), SizedBox(width: 24)],
              )
            ],
          )),
    );
  }
}
