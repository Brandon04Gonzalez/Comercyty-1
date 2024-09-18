import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? label;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? icon;
  final Color? iconColor;
  final TextInputType? keyboardType;
  

  const CustomTextFormField({
  super.key, 
  this.label, 
  this.errorMessage, 
  this.onChanged, 
  this.validator,
  this.obscureText = false, 
  this.icon, 
  this.iconColor = const Color(0xFF523396), 
  this.keyboardType =TextInputType.emailAddress, 
  });
  
  @override
  Widget build(BuildContext context) {
    const border=OutlineInputBorder(
              borderRadius:BorderRadius.all(
              Radius.circular(15)
              ),
            );
    
    

    return  SizedBox(width: 400,
      child: TextFormField(
        onChanged:onChanged,
        validator: validator,
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(color: Colors.white60),
        decoration: 
              InputDecoration(
              iconColor:iconColor,
              icon:icon,
              labelText:label,
              border:border,
             errorText:errorMessage

          ),
      ),
    );
  }
}