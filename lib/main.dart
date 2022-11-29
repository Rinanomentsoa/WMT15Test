import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyColors {
  static const MaterialColor mainColor = const MaterialColor(
    0xFF900cdb, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff9b27ff),//10%
      100: const Color(0xffa64df2),//20%
      200: const Color(0xffb165f6),//30%
      300: const Color(0xffbc7df9),//40%
      400: const Color(0xffc886fd),//50%
      500: const Color(0xffd39ef1),//60%
      600: const Color(0xffdeb6f4),//70%
      700: const Color(0xffe9cef8),//80%
      800: const Color(0xfff4e7fb	),//90%
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,//Starting point
                end: Alignment.center,//Ending point
                stops: [1.2, 0],
                colors: [
                  MyColors.mainColor,
                  Colors.white,
                ]
            )
          ),
          child: Container(
            //height: deviceHeight*0.8,
            //width: deviceWidth*0.86,
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(56, 75, 56, 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [
                      MyColors.mainColor.shade400,
                      MyColors.mainColor.shade300,
                      MyColors.mainColor,
                    ],
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                )
            ),
              child: Column(
                children: [
                  //HEADER
                  Center(
                      child:Column(
                        children: [
                         Padding(padding: EdgeInsets.only(top: 26)),
                          Icon(Icons.airplanemode_active, size: deviceHeight*0.081,color: Colors.white,),
                          Padding(padding: EdgeInsets.only(top: 29)),
                          const Text(
                        '\$09.99',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 41,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ) ,),
                          Padding(padding: EdgeInsets.only(top: 9)),
                          const Text(
                        'per month',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ) ,),
                          Padding(padding: EdgeInsets.only(top: 7)),
                          const Divider(
                            thickness: 3,
                            color: Color(0xffec4afa),
                            indent: 21,
                            endIndent: 21,
                          ),
                    ],
                  )),
                  //HEADER ENDS

                  Center(
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 24)),
                      Text('STARTUP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                        Padding(padding: EdgeInsets.only(top: 31)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Disk Space - 200GB',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 12)),
                            Text('BandWidth - 30GB',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 12)),
                            Text('Databases - 03',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 12)),
                            Text('E-mail Accounts - 10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 12)),
                            Text('24/7 Support -No',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 12)),
                            Text('E-mail Support - Yes',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
    ]
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 42)),
                  SizedBox(
                    height: deviceHeight*0.06,
                    width: deviceWidth*0.55,
                    child: ElevatedButton(
                      onPressed:(){},
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(MyColors.mainColor),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(color: MyColors.mainColor)
                              )
                          )
                      ),
                      child: const Text(
                        'SIGN UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ],
              )
    ),
        )
    );

  }
}