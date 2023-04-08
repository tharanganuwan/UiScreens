import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: 
        SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: SizedBox(
            width: size.width,
            child: Column(
              children: [
                Container(
                  height: 320,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      ),
                    ),
                  child: Stack(children: [
                    Image.asset("lib/images/page2Image.png",fit: BoxFit.fill,),
                    const Center(child: Text("NFT 1",
                     style: TextStyle(
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      fontSize: 64,
                      color: Colors.white
                     ), 
                    )
                  ),
                  Align(alignment: Alignment.topRight, child: Container( margin :EdgeInsets.only(top: 10),child: IconButton(onPressed: (){}, icon: Icon(Icons.menu)))),
                  Align(alignment: Alignment.topLeft, child: Container( margin :EdgeInsets.only(top: 10), child: Image.asset("lib/icons/appIcon.png")))
                  ],),
                ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 5,),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(size: size, name: "LUX\n3700LX",icon: "temp.png",topic: "TEMP"),
                          Card(size: size, name: "LUX\n3700LX",icon: "sun.png",topic: "LIGTH"),
                          Card(size: size, name: "HUMI\n80% RH",icon: "humi.png",topic: "HUMIDITY"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(size: size, name: "",icon: "",topic: "PH LEVEL",iswhite: true,),
                          Card(size: size, name: "PH\n5.7 PH",icon: "tankIcon1.png",topic: "TANK A", topicSize: 15,),
                          Card(size: size, name: "PH\n5.7 PH",icon: "tankIcon1.png",topic: "TANK B", topicSize: 15,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(size: size, name: "",icon: "",topic: "EC LEVEl", iswhite: true,),
                          Card(size: size, name: "EC\n0.6MS/C",icon: "tankIcon2.png",topic: "TANK A", topicSize: 15,),
                          Card(size: size, name: "EC\n0.9MS/C",icon: "tankIcon2.png",topic: "TANK B", topicSize: 15,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Card(size: size, name: "",icon: "",topic: "WATER\nLEVEL", iswhite: true,),
                          Card(size: size, name: "75%\n1800L",icon: "tankIcon3.png",topic: "TANK A", topicSize: 15,iconHeight: 25,iconWidth: 40,),
                          Card(size: size, name: "60%\n1650L",icon: "tankIcon3.png",topic: "TANK B", topicSize: 15,iconHeight: 25,iconWidth: 40,),
                        ],
                      ),
                    ],
                  ),
                )
              ]
            ),
              ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.size,
    required this.name,
    required this.topic,
    required this.icon,
    this.topicSize=20,
    this.iswhite=false,
    this.iconWidth = 20,
    this.iconHeight =20,
    
  }) : super(key: key);

  final Size size;
  final String name;
  final String topic;
  final String icon;
  final double topicSize;
  final bool iswhite;
  final double iconWidth;
  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding:const EdgeInsets.symmetric(horizontal: 11,vertical: 7),
      height: 102,
      width: 116,
      decoration: BoxDecoration(
        borderRadius:const BorderRadius.all(Radius.circular(20)),
        gradient:iswhite?null: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
          Color(0xaaBEBEBE),
          Color(0x88075600),
          ],
        ),
      ),
      child: SizedBox(
        child: iswhite? Center(
          child: Text(topic,
              style: TextStyle(
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
              fontSize: topicSize,
              ),
            ),
        ) : Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(topic,
              style: TextStyle(
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
              fontSize: topicSize,
              ),
            ),
            Column(
              children: [
                Image.asset("lib/icons/$icon",width: iconWidth,height: iconHeight,),
                const SizedBox(height: 4,),
                Text(name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Colors.white
                  ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}