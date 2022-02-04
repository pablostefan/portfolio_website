import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../pages/about_page.dart';
import '../../../pages/home_page.dart';
import '../../../models/custom_page_route.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = -1;
  int hoverIndex = -1;
  List<String> menuItems = [
    "Apresentação",
    "Projetos",
    "Certificados",
    "Contato",
    "Sobre",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
        height: size.height * 0.06,
        constraints: BoxConstraints(
          maxWidth: size.width * 0.9,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            menuItems.length,
            (index) => buildMenuItem(index, size),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index, Size size) => InkWell(
        onTap: () {
          if (index != menuItems.length - 1) {
            setState(() => selectedIndex = index);
            pageController.animateToPage(
              index + 1,
              duration: pageDuration,
              curve: Curves.decelerate,
            );
          } else {
            Navigator.of(context).push(
              CustomPageRoute(
                child: const AboutPage(
                  icon: "images/my_icon.png",
                  title: "Sobre",
                  text: aboutMeText,
                  subTitle: "Minha apresentação",
                  color: Color.fromARGB(255, 141, 213, 255),
                ),
              ),
            );
          }
        },
        onHover: (value) {
          setState(() => value ? hoverIndex = index : hoverIndex = -1);
        },
        child: SizedBox(
          width: size.width * 0.14,
          height: size.height * 0.06,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                duration: duration,
                left: 0,
                right: 0,
                bottom: hoverIndex == index
                    ? size.width > 600
                        ? -20
                        : -5
                    : -50,
                child: Image.asset("assets/images/Hover.png"),
              ),
              Text(
                menuItems[index],
                style: TextStyle(fontSize: fontSizeMean(size)),
              ),
            ],
          ),
        ),
      );
}
