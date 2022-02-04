import 'package:flutter/material.dart';
import 'package:portfolio_website/models/Certificate.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import '../../../constants.dart';
import 'certificate_card.dart';


GlobalKey<ScrollSnapListState> sslKey = GlobalKey();

class CertificateList extends StatelessWidget {
  const CertificateList({
    Key? key,
    required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    var certificatesList = List.generate(
      certificates.length,
      (index) => CertificateCard(
        index: index,
        size: size,
      ),
    );

    Widget biuldItemList(BuildContext context, int index) =>
        certificatesList[index];
    return SizedBox(
      width: size.width,
      height: size.height * .7,
      child: ScrollSnapList(
        initialIndex: 1,
        dynamicItemSize: true,
        itemSize: contacBox(size),
        onItemFocus: ((index) {}),
        key: sslKey,
        itemCount: certificates.length,
        itemBuilder: biuldItemList,
      ),
    );
  }
}
