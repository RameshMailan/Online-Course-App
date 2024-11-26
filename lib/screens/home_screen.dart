import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/screens/screens.dart';
import 'package:flutter_online_learning_app/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Online",
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseDetailScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Master Class",
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const MyHorizontalList(
                        startColor: 0xFF9288E4,
                        endColor: 0xFF534EA7,
                        courseHeadline: 'Recommended',
                        courseTitle: 'UI/UX DESIGNER\n BEGINNER',
                        courseImage: 'assets/images/img_saly10.png');
                  }),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Free Online Class",
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "From over 80 lectures",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: const Color(0xFF9C9A9A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const MyVerticalList(
                    courseRating: 3.0,
                    courseTitle: 'Flutter Developer',
                    courseImage: 'assets/images/img_saly24.png',
                    courseDuration: '8 hours',
                  );
                })
          ],
        ),
      ),
    );
  }
}
