
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.only(
            left: myLittlePadding(size),
          ),
          constraints: BoxConstraints(
            maxWidth: size.width,
            maxHeight: size.height / 2,
          ),
          width: double.infinity,
          color: Colors.blue.withOpacity(0),
          child: Row(
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ola, eu sou",
                    style: TextStyle(
                      fontSize: fontSizeMean(size),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Pablo \nStefan",
                    style: TextStyle(
                      fontSize: fontSizeTitle(size),
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    "Desenvolvedor Full Stack",
                    style: TextStyle(
                      fontSize: fontSizeMean(size),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const Spacer(flex: 8,),
              SizedBox(
                width: size.width * 0.22,
                child: Text(
                  """Sou aluno de Ciências e tecnologia na Universidade Federal do Rio Grande do Norte, esse é meu portifólio feito com Flutter aqui estão minhas principais informações.""",
                  style: TextStyle(
                    fontSize: fontSizeMean(size),
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Spacer(
                flex: size.width >= 600 ? 50 : 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
