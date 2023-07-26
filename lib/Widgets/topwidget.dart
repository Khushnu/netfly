import 'package:flutter/material.dart';
import 'package:netfly/Widgets/spacer_widget.dart';
import 'package:netfly/Widgets/text_widget.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(BuildContext context) {
     double screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
                  color: Color(0xffF5F5F5),
                  width: screenwidth,
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20, 
                        top: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                            borderRadius: BorderRadius.circular(90),
                            child: Image.network('https://plus.unsplash.com/premium_photo-1674203955625-dce611a93085?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1035&q=80' , 
                            height: 80, 
                            width: 80,
                            fit: BoxFit.fill,),
                          ),
                         
                                 Container(child: const Text('1953 Bar & Restaurant', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))), 
                         const SpacerWidget(width: 1,),
                         const Icon(Icons.star_border), 
                        const Text('5.0', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        const SpacerWidget(width: 1,),
                        ]),
                      ), 
                       Positioned(
                left: 90,
                top: 80,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     IconButton(onPressed: (){}, icon: const Icon(Icons.location_on)), 
                    Container(
                      child: const TextWidget(text: '112 High St, Galashiels TD1 1SQ, United Kingdom', fontSize: 20)),
                   ],
                 ),
               ), 
                Positioned(
                left: 90,
                top: 124,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     IconButton(onPressed: (){}, icon: const Icon(Icons.call)), 
                    const TextWidget(text: '+44 1896 490132', fontSize: 20),
                   ],
                 ),
               ), 
               Positioned(
                top: 170, 
                left: 94,
                 child: Container(
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
               ), 
               const Positioned(
                top: 220, 
                left: 94,
                child: TextWidget(text: 'We are only offering collection orders at the moment', 
               fontSize: 19, color: Colors.green,), 
               ), 
               const Positioned(
                top: 250, 
                left: 94,
                child: Row(
                children: [
                  Icon(Icons.work), 
                  TextWidget(text: '13:00 - 02:00', fontSize: 20)
                ],
               ))
                    ],
                  ),
                ),
      ],
    );
  }
}