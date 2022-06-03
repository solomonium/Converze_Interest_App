import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interest_app/widgets/app_large_text.dart';
import 'package:interest_app/widgets/app_text.dart';
import 'package:interest_app/widgets/tapable_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFootballVisible = true;
  bool isMusicVisible = true;
  bool isMedicineVisible = true;
  bool isAgricultureVisible = true;
  bool isSportVisible = true;
  bool isBreakfastVisible = true;
  bool isTravelVisible = true;
  bool isExportationVisible = true;
  bool isSleepVisible = true;
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppLargeText(size: 20, text: 'Interests'),
                  const SizedBox(height: 10),
                  AppText(
                      text:
                          'Select a minimum of 3 interests and a maximum of 7 interests.'),
                  const SizedBox(height: 30),

                  // TypeAheadField(
                  //   onSuggestionSelected: (suggestion) => {},
                  //   suggestionsCallback: (String pattern) => {},
                  //   itemBuilder: (BuildContext context, Object? itemData) =>
                  //       Container(),
                  // ),

                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(50)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.9),
                      ),
                      filled: true,
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.0,
                        height: 1,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    child: Wrap(
                      runSpacing: 10,
                      children: [
                        SelectInterest(
                          text: 'Football',
                          onClick: () {
                            setState(() {
                              isFootballVisible = !isFootballVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 100,
                          visibility: isFootballVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          text: 'Music',
                          onClick: () {
                            setState(() {
                              isMusicVisible = !isMusicVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: isMusicVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          text: 'Medicine',
                          onClick: () {
                            setState(() {
                              isMedicineVisible = !isMedicineVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 150,
                          visibility: isMedicineVisible,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SelectInterest(
                          text: 'Agriculture',
                          onClick: () {
                            setState(() {
                              isAgricultureVisible = !isAgricultureVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 120,
                          visibility: isAgricultureVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          text: 'Sports',
                          onClick: () {
                            setState(() {
                              isSportVisible = !isSportVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 100,
                          visibility: isSportVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          text: 'Breakfast',
                          onClick: () {
                            setState(() {
                              isBreakfastVisible = !isBreakfastVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          visibility: isBreakfastVisible,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SelectInterest(
                          text: 'Sleep',
                          onClick: () {
                            setState(() {
                              isSleepVisible = !isSleepVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: isSleepVisible,
                        ),
                        const SizedBox(width: 10),
                        SelectInterest(
                          text: 'Travel',
                          onClick: () {
                            setState(() {
                              isTravelVisible = !isTravelVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: isTravelVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          text: 'Exportation',
                          onClick: () {
                            setState(() {
                              isExportationVisible = !isExportationVisible;
                              isSelected++;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 160,
                          visibility: isExportationVisible,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  AppText(
                    text: 'Selected',
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 180,
                    width: double.infinity,
                    child: Wrap(
                      runSpacing: 10,
                      children: [
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Football',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isFootballVisible = !isFootballVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 100,
                          visibility: !isFootballVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Music',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isMusicVisible = !isMusicVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: !isMusicVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Medicine',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isMedicineVisible = !isMedicineVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 150,
                          visibility: !isMedicineVisible,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Agriculture',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isAgricultureVisible = !isAgricultureVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 120,
                          visibility: !isAgricultureVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Sports',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isSportVisible = !isSportVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 100,
                          visibility: !isSportVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Breakfast',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isBreakfastVisible = !isBreakfastVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          visibility: !isBreakfastVisible,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Sleep',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isSleepVisible = !isSleepVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: !isSleepVisible,
                        ),
                        const SizedBox(width: 10),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Travel',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isTravelVisible = !isTravelVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 80,
                          visibility: !isTravelVisible,
                        ),
                        const SizedBox(width: 8),
                        SelectInterest(
                          borderColor: Colors.indigo,
                          text: 'Exportation',
                          textColor: Colors.indigo,
                          onClick: () {
                            setState(() {
                              isExportationVisible = !isExportationVisible;
                              isSelected--;
                            });
                          },
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 160,
                          visibility: !isExportationVisible,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black87,
                    primary: Colors.indigoAccent,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                  onPressed: isSelected >= 3 && isSelected <= 7
                      ? () {
                          print(isSelected);
                        }
                      : null,
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.nunitoSans(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List interest = [
    {'Interest1': 'Football'},
    {"Intrest2": "Music"},
    {"Intrest3": "Medicine"},
    {"Intrest4": "Agriculture"},
    {"Intrest5": "Sports"},
    {"Intrest6": "Breakfast"},
    {"Intrest7": "Sleep"},
    {"Intrest8": "Travel"},
    {"Intrest9": "Exportation"},
    {"Intrest10": "Eating"},
    {"Intrest11": "Singing"},
    {"Intrest12": "Gyming"},
    {"Intrest13": "Reading"},
    {"Intrest14": "Coding"},
    {"Intrest15": "Meditating"}
  ];
}
