import 'package:flutter/material.dart';

import '../Model/country_code.dart';

class DropdownTextField extends StatefulWidget {
  final TextEditingController textEditingController;

  const DropdownTextField({super.key, required this.textEditingController});
  @override
  DropdownTextFieldState createState() => DropdownTextFieldState();
}

class DropdownTextFieldState extends State<DropdownTextField> {
  String? dropdownValue;
  
  
  @override
  Widget build(BuildContext context) {
      return  Container(
       // height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all( 
                color: Colors.grey.shade300
              )
            ),
            child:  Padding(
             padding: const EdgeInsets.only(left:4.0),
             child: Row(
               children: <Widget>[
                  PopupMenuButton<CountryCodeData>(
                   icon: const Icon(Icons.arrow_drop_down),
                   onSelected: (CountryCodeData value) {
                   dropdownValue = value.name;
                   widget.textEditingController.text='${value.dialCode} ';
                   },
                   itemBuilder: (BuildContext context) {
                     return countryCodes.map((CountryCodeData value) {
                       return  PopupMenuItem( value: value, child: Text('${value.name} ${value.dialCode}'),);
                     }).toList();
                   },
                 ),
                 
                  Expanded(
                   child:  TextFormField(controller: widget.textEditingController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                     hintText: 'phone number',
                     border: UnderlineInputBorder(
                       borderSide: BorderSide.none
                     )
                   ),)
                 ),
               ],
             ),
                ),
          );
     
  }
}