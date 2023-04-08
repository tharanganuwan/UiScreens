import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
          margin:const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(margin: const EdgeInsets.only(left: 10), child: IconButton(onPressed: (){}, icon: Icon(Icons.menu))),
                  Container(
                    width: 250,
                    height: 56,
                    padding: const EdgeInsets.only(left: 40),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(170, 0, 83, 36),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft:Radius.circular(40) ),),
                    child: const Center(
                      child: Text("CONTROL PANEL",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 170,
                child: Stack(
                  children: [
                    Center(
                      child:Image.asset("lib/images/page3Image.png",fit: BoxFit.cover,width: 280,height: double.infinity,),
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("lib/icons/cloudIcon.png"),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text("RAIN\n25°C")
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("HUMIDITY\nWIND"),
                                SizedBox(width: 10),
                                Text("85%\n10KM/H")
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("SHADES",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      ),
                    ),
                    Row(
                      children:const [
                        Card(topic: "A", icon: "pg31.png",color1: Color.fromARGB(141, 37, 0, 150),color2: Color.fromARGB(255, 216, 216, 216),),
                        SizedBox(width: 20,),
                        Card(topic: "B", icon: "pg31.png",color1: Color(0xC80EA500),color2: Color.fromARGB(255, 216, 216, 216),)
                      ],
                    ),
                    const Text("MISTERS",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      ),
                    ),
                    Row(
                      children:const[
                        Card(topic: "A", icon: "pg32.png",color1: Color.fromARGB(141, 37, 0, 150),color2: Color.fromARGB(255, 216, 216, 216),),
                        SizedBox(width: 20,),
                        Card(topic: "B", icon: "pg32.png",color1: Color.fromARGB(141, 37, 0, 150),color2: Color.fromARGB(255, 216, 216, 216),)
                      ],
                    ),
                    const Text("MISTERS",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      ),
                    ),
                    Row(
                      children: const [
                        Card(topic: "A", icon: "pg33.png",color1: Color(0xC80EA500),color2: Color.fromARGB(255, 216, 216, 216),),
                      ],
                    ),
                    const Text("EXHAUST FANS",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      ),
                    ),
                    Row(
                      children:const [
                        Card(topic: "A", icon: "pg34.png",color1: Color.fromARGB(141, 37, 0, 150),color2: Color.fromARGB(255, 216, 216, 216),),
                        SizedBox(width: 20,),
                        Card(topic: "B", icon: "pg34.png",color1: Color(0xC80EA500),color2: Color.fromARGB(255, 216, 216, 216),),
                        SizedBox(width: 20,),
                        Card(topic: "C", icon: "pg34.png",color1: Color(0xC80EA500),color2: Color.fromARGB(255, 216, 216, 216),)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
              ),
        ),),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.topic,
    required this.icon,
    required this.color1,
    required this.color2,
    
  }) : super(key: key);

  final String topic;
  final String icon;
  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding:const EdgeInsets.symmetric(horizontal: 11,vertical: 7),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius:const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          color1,
          color2,
          ],
        ),
      ),
      child: SizedBox(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset("lib/icons/$icon"),
                const SizedBox(height: 4,),
                Text(topic,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
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