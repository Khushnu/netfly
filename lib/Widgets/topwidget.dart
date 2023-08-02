import 'package:flutter/material.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
     double screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
                  color: const Color(0xffF5F5F5),
                  width: screenwidth,
                  height: 340,
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric( vertical: 19, ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: Image.network('https://plus.unsplash.com/premium_photo-1674203955625-dce611a93085?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80' , 
                              height: 80, 
                              width: 80,
                              fit: BoxFit.fill,),
                            ),
                           
                                   // ignore: avoid_unnecessary_containers
                                   Expanded(child: Container(child: const Text('1953 Bar & Restaurant', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))), 
                            const SizedBox(width: 14,),
                           const Icon(Icons.star_border), 
                          const Text('5.0', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          const Spacer()
                          
                          ]),
                        ),
                      ), 
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 80),
                         child: Align( 
                          alignment: Alignment.topCenter,
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               IconButton(onPressed: (){}, icon: const Icon(Icons.location_on)), 
                              // ignore: avoid_unnecessary_containers
                              const Expanded(
                                child: Text('112 High St, Galashiels TD1 1SQ, United Kingdom', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              ),
                             ],
                           ),
                         ),
                       ), 
                Padding(
                  padding: const EdgeInsets.fromLTRB(85, 15, 10,20),
                  child: Align( 
                    alignment: Alignment.centerLeft,
                    child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.call)), 
                       const Text('+44 1896 490132', style:TextStyle(fontWeight: FontWeight.bold, )),
                      ],
                    ),
                  ),
                ), 
               Padding(
                 padding: const EdgeInsets.fromLTRB(90, 170, 30, 10),
                 child: Align( 
                  alignment: Alignment.centerLeft,
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      const SizedBox(
                        height: 10,
                      ),
                       Container(
                        height: 30, 
                        width: 70,
                        decoration:  BoxDecoration(
                          color: Colors.green, 
                          borderRadius: BorderRadius.circular(20)
                        ),
                         child: const Center(child: 
                         Text('Open', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),),),
                       ), 
                        const SizedBox(
                        height: 10,
                      ),
                       const Text('We are only offering collection orders at the moment', 
                       style:TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold)), 
                        const SizedBox(
                        height: 10,
                      ),
                       const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround, 
                        mainAxisSize: MainAxisSize.min,
                       children: [
                         Icon(Icons.work), 
                         Text('13:00 - 02:00', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                       ],
                       ),
                     ],
                   ),
                 ),
               )
                    ],
                  ),
                ),
      ],
    );
  }
}