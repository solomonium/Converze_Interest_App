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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppLargeText(size: 20, text: 'Interests'),
            const SizedBox(height: 10),
            AppText(
                text:
                    'Select a minimum of 3 interests and a maximum of 7 interests.'),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(50)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.9),
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
            Column(
              children: [
                Row(
                  children: [
                    SelectInterest(
                        text: 'Football',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 100),
                    const SizedBox(width: 8),
                    SelectInterest(
                        text: 'Music',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 80),
                    const SizedBox(width: 8),
                    SelectInterest(
                        text: 'Medicine',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 150),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SelectInterest(
                          text: 'Agriculture',
                          onClick: () {},
                          btnHeight: 50,
                          borderRadius: 8,
                          btnWidth: 100),
                    ),
                    const SizedBox(width: 8),
                    SelectInterest(
                        text: 'Sports',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 100),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SelectInterest(
                        text: 'Breakfast',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SelectInterest(
                        text: 'Music',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 80),
                    const SizedBox(width: 10),
                    SelectInterest(
                        text: 'Travel',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 80),
                    const SizedBox(width: 8),
                    SelectInterest(
                        text: 'Exportation',
                        onClick: () {},
                        btnHeight: 50,
                        borderRadius: 8,
                        btnWidth: 160),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            AppText(
              text: 'Selected',
              fontWeight: FontWeight.w700,
            ),
            const Spacer(),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Color.fromARGB(255, 94, 94, 214),
                  //minimumSize: Size(btnWidth, 50),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
                onPressed: () {},
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
    );
  }
}
