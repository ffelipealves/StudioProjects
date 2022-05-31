import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 73,
                child: CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  radius: 70,
                  child: Image(
                    image: NetworkImage(
                        'https://static.wikia.nocookie.net/leagueoflegends/images/d/dc/Emote_Ok.png/revision/latest/scale-to-width-down/250?cb=20191005180209&path-prefix=pt-br'),
                  ),
                ),
              ),
              const Text(
                'Felipe Alves',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontFamily: 'Smooch-Regular'),
              ),
              const Text(
                'ESTUDANTE',
                style: TextStyle(
                    fontFamily: 'SourceSansPro-Regular',
                    fontSize: 20,
                    letterSpacing: 4),
              ),
              const SizedBox(height: 20,width: 250,child: Divider(color: Colors.black,),),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: 60,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add_call,
                      size: 30,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '99 7584-9276',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                height: 60,
                padding: EdgeInsets.all(10),

                child: Row(
                  children: const [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 30,
                      color: Colors.lightBlue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'email123@gmail.com',
                      style: TextStyle(color: Colors.lightBlue, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
