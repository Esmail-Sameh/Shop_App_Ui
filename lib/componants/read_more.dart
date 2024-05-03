

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_ui/controller/product_controller.dart';

class ReadMore extends StatefulWidget {
  @override
  State<ReadMore> createState() => _ReadMoreState();
}

class _ReadMoreState extends State<ReadMore> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProductController(),
      builder: (controller) {
        return GestureDetector(
          onTap: () {
            controller.clickForMore();
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: controller.isClickForMore ? 80:40,
            child: Text(
              'The product studiobook pro 17 is one of the work\'s thinnest laptop featuring nvidia quadro graphics, sdsdfds frrfrf nynyn v fd f dcv dc dc d vtgt j uj nuy junj u opopp  tyty yrer ewrer tr tedtr iu u uig hguyg uyg yyg y yg iug yg ygy gyg kj klj',
              maxLines: controller.isClickForMore ?500 : 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        );
      },
    );
  }
}
