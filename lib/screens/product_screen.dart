import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ui/componants/bage_item.dart';
import 'package:shop_ui/componants/read_more.dart';
import 'package:shop_ui/screens/chat_screen.dart';
import 'package:shop_ui/screens/home_screen.dart';

import '../componants/text_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        )),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.messenger_outlined,
                              color: Colors.blue.shade900,
                            ),
                            Text(
                              'Ask Seller',
                              style: TextStyle(color: Colors.blue.shade900),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'ProArt studioBook',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Type: ',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  Text(
                    'Pro 17 w700 ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 19,
                        color: Colors.grey),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Image.asset('assets/images/mackbook.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Image.asset('assets/images/mackbook.png')),
                      Expanded(
                          child: Image.asset('assets/images/mackbook.png')),
                      Expanded(
                          child: Image.asset('assets/images/mackbook.png')),
                      Expanded(
                          child: Image.asset('assets/images/mackbook.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        'Asus',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Asus official store',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('View Store'),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextItem(
                        textTitle: 'Overview',
                        isClick: true,
                      ),
                      TextItem(
                        textTitle: 'Specification',
                        isClick: false,
                      ),
                      TextItem(
                        textTitle: 'Review',
                        isClick: false,
                      ),
                      TextItem(
                        textTitle: 'More',
                        isClick: false,
                      ),
                    ]),
              ),
              SizedBox(
                height: 15,
              ),
              ReadMore(),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        height: MediaQuery.of(context).size.height / 10,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Price', style: TextStyle(color: Colors.grey, fontSize: 19), ),
                Text('\$2500', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20), ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.blue.shade900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('Add To Cart', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ), ),
            )
          ],
        ),
      ),
    );
  }
}
