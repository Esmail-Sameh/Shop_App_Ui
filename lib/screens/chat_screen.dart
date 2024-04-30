import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_ui/componants/chat_item.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue[900],
                  radius: 25,
                  child: Text(
                    'Asus',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Asus Official Store',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Active 5 hours ago',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),
                            child: Column(
                children: [
                  Container(
                
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[350],
                          ),
                          child: Image.asset('assets/images/mackbook.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ProArt Studiobook 17',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Type: pro 17 W700',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$2500',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                  ChatItem(
                      massegeText:
                          'Hi Dear, is this laptop still have a ctock? Iwanna buy 100 pcs',
                      isChatMe: true
                  ),
                  ChatItem(
                      massegeText:
                      'Yes, it\'s still have stock',
                      isChatMe: false
                  ),
                  ChatItem(
                      massegeText:
                      'great, then deliver it to my address',
                      isChatMe: true
                  ),
                  ChatItem(
                      massegeText:
                      'Would you give me some discount or bonus?',
                      isChatMe: true
                  ),
                  ChatItem(
                      massegeText:
                      'yes, i will',
                      isChatMe: false
                  ),
                  ChatItem(
                      massegeText:
                      'yes, i will kmkmkmk hyvyvyv ygygy ',
                      isChatMe: true
                  ),
                  ChatItem(
                      massegeText:
                      'yes, i will',
                      isChatMe: false
                  ),
                  ChatItem(
                      massegeText:
                      'yes, i will kmkmkmk hyvyvyv ygygy ',
                      isChatMe: true
                  ),
                
                ],
                            ),
                          ),
              )),
          
        ],
      )
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
        height: MediaQuery.of(context).size.height / 13,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type something...',
                  hintStyle: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.send_rounded,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
