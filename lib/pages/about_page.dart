import 'package:flutter/material.dart';
import 'package:portfolio_website/models/MyTitle.dart';
import '../constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final Color color;
  final String icon, text, title, subTitle;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 247, 244, 244),
          image: DecorationImage(
            image: AssetImage("images/bg_about_page.png"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(fontSizeLittle(size)),
                    boxShadow: [boxShadown],
                  ),
                  child: IconButton(
                    iconSize: fontSizeBig(size),
                    color: color,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: size.width * .8,
                  child: MyTitle(
                    size: size,
                    title: title,
                    subTitle: subTitle,
                    color: color,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: fontSizeMean(size),
              ),
              width: size.width * .7,
              height: size.height * .6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [boxShadown],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Image.asset(
                    icon,
                    height: hireMeImage(size),
                  ),
                  const Spacer(),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSizeLittle(size),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
