import 'package:flutter/material.dart';
import 'package:netfly/main.dart';

class DrawerComponentWidget extends StatelessWidget {
  const DrawerComponentWidget({super.key, required this.title, required this.icon, this.onTap});
  final String title; 
  final IconData icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return   Padding(
                padding: const EdgeInsets.symmetric(vertical: 12, 
                horizontal: 30),
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    height: 30,
                    width: screenWidth, 
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                   ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Icon(icon), 
                         const SizedBox(
                          width: 30,
                         ),
                        Text(title, style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16, 
                        fontWeight: FontWeight.bold ),)
                      ],
                    ),
                  ),
                ),
              );
  }
}