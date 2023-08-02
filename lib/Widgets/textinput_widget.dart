import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key, required this.hintText,  this.suffixicon,  this.isPasswordVisible,});
  final String hintText; 
  final IconData? suffixicon; 
  
  final bool? isPasswordVisible; 

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
                  decoration: InputDecoration(
                    hintText: widget.hintText, 
                    contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10), 
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300, 
                        
                      )
                    ), 
                    suffixIcon: Icon(widget.suffixicon), 
                  ),
                );
  }
}