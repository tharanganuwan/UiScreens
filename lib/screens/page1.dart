import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Align(alignment: Alignment.topLeft, child: Container( margin :const EdgeInsets.only(top: 10), child: Image.asset("lib/icons/appIcon.png"))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.topRight, child: Container( margin :const EdgeInsets.only(top: 10),child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_rounded,)))),
                      Align(alignment: Alignment.topRight, child: Container( margin :const EdgeInsets.only(top: 10),child: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)))),
                    ],
                  )
                ],),
                const SizedBox(height: 20,),
                Card(size: size,name: "NFT 1",),
                Card(size: size,name: "NFT 2",),
                Card(size: size,name: "MUSHROOM",),
                Card(size: size,name: "OUT DOOR",),
              ],
            ),
          ),
        )),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.size,
    required this.name
  }) : super(key: key);

  final Size size;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding:const EdgeInsets.symmetric(horizontal: 11,vertical: 7),
      height: 154,
      width: size.width-20,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          Color(0xaaBEBEBE),
          Color(0x88075600),
          ],
        ),
      ),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
              style: const TextStyle(
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
              fontSize: 28,
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset("lib/icons/sun.png"),
                    const Text("LUX\n3700LX",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("lib/icons/temp.png"),
                    const Text("TEMP\n24°c",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("lib/icons/humi.png"),
                    const Text("HUMI\n80% RH",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}