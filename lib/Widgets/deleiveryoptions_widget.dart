import 'package:flutter/material.dart';
import 'package:netfly/ResponiveHelper/responsive.dart';
import 'package:netfly/main.dart';

class DeliveryOptionWidget extends StatefulWidget {
  const DeliveryOptionWidget({super.key});

  @override
  State<DeliveryOptionWidget> createState() => _DeliveryOptionWidgetState();
}

class _DeliveryOptionWidgetState extends State<DeliveryOptionWidget> {
  String currentSelected = 'Pickup\n30 min';

  var list = ['Pickup\n30 min', 'Delivery\n50 min'];

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Responsive.isMobileScreen(context) ? Container(
      height: 320,
      width: screenWidth * 0.9 + 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: list.map((e) {
                bool isSlected = currentSelected == e;
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentSelected = e;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: screenWidth * 0.5 - 30,
                    color: isSlected
                        ? const Color(0xff183861)
                        : Colors.grey.shade200,
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: e,
                              style: TextStyle(
                                  color:
                                      isSlected ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current Order',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('ASAP',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Icon(Icons.history)
              ],
            ),
          ),
          const Center(
            child: Text('No Items added in Cart\nPlease start adding items.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ) : Responsive.isMediumScreen(context) ? Container(
      height: 320,
      width: screenWidth * 0.4 + 40 ,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: list.map((e) {
                bool isSlected = currentSelected == e;
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentSelected = e;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: screenWidth * 0.2 + 10,
                    color: isSlected
                        ? const Color(0xff183861)
                        : Colors.grey.shade200,
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: e,
                              style: TextStyle(
                                  color:
                                      isSlected ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current Order',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('ASAP',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Icon(Icons.history)
              ],
            ),
          ),
          const Center(
            child: Text('No Items added in Cart\nPlease start adding items.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ) : Container(
      height: 320,
      width: screenWidth * 0.9 + 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: list.map((e) {
                bool isSlected = currentSelected == e;
                return InkWell(
                  onTap: () {
                    setState(() {
                      currentSelected = e;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: screenWidth * 0.2 - 30,
                    color: isSlected
                        ? const Color(0xff183861)
                        : Colors.grey.shade200,
                    child: Center(
                        child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: e,
                              style: TextStyle(
                                  color:
                                      isSlected ? Colors.white : Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )),
                  ),
                );
              }).toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Current Order',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('ASAP',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Icon(Icons.history)
              ],
            ),
          ),
          const Center(
            child: Text('No Items added in Cart\nPlease start adding items.',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
