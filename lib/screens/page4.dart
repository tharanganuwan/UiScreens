import 'package:flutter/material.dart';


class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(child: 
        Column(
          children: [
            Container(
                height: 241,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                    ),
                  ),
                child: Stack(
                  children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/icons/user.png"),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("USER NAME",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w400,
                            ),
                            ),
                            Text("TLP:000 000 000",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            )
                          ],
                        )
                      ],
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20,right: 10),
                    child:const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.close)),
                  ),
                
                ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                            Icon(Icons.arrow_drop_down_circle_outlined,),
                            SizedBox(width: 15,),
                            Text("ABOUT US",style: TextStyle(fontSize: 24),),
                          ],
                          ),
                          const Icon(Icons.arrow_forward_ios,size: 15,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 25,),
                    const TextRow( name: "NOTIFICATION",iconNme: Icon(Icons.notifications_none_rounded,)),
                    const SizedBox(height: 25,),
                    const TextRow( name: "VERSION",iconNme: Icon(Icons.settings_outlined,)),
                    const SizedBox(height: 25,),
                    const TextRow( name: "INTRO",iconNme: Icon(Icons.check_sharp,)),
                    const SizedBox(height: 25,),
                    const TextRow( name: "CONTACTS",iconNme: Icon(Icons.people_outline,)),
                    const SizedBox(height: 25,),
                    const TextRow( name: "LOG OUT",iconNme: Icon(Icons.logout_outlined,)),
                  ],
                ),
              )
          ],
        )
      ),
    );
  }
}

class TextRow extends StatelessWidget {
  const TextRow({
    Key? key,
    required this.iconNme,
    required this.name,
  }) : super(key: key);

  final Icon iconNme;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          iconNme,
          const SizedBox(width: 15,),
          Text(name,style: const TextStyle(fontSize: 24),),
        ],
      ),
    );
  }
}