import 'package:comercyty/ui/widgets/Inputs/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 const LoginPage({super.key});
  final colorUtils = const Color(0xFF523396);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  Scaffold(
      backgroundColor: const Color(0xFF060D43),
        body:ListView(
          children: [
            Column(
              children: [
                 const SizedBox(
                  height: 30,
                ),
                //logo de comercyty
                Image.asset(
                  'assets/logo.png',
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 60,
                  ),
                

                //email address
                const CustomTextFormField(
                  label: 'correo electronico',
                  icon: Icon(Icons.email_outlined),
                  iconColor: Color(0xFF523396),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15.0),


                //password
                const CustomTextFormField(
                label: 'password',
                icon: Icon(Icons.lock_outline_rounded),
                iconColor: Color(0xFF523396),
                obscureText: true,
                ),
                const SizedBox(height: 15.0),

                
                //button login
                _buttonLogin(),
            ],
            
            ),
          ],
        ),
        )
      );
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return SizedBox(width: 400,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: 
           InputDecoration(
            iconColor: colorUtils,
            icon: const Icon(Icons.email_outlined),
            labelText: 'correo electronico',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            
        ),
        onChanged:(value) {},
      validator: (value) {
        if (value == null) return 'campo requerido';
        if (value.isEmpty) return 'campo es requerido';
        return null;
      },
    ),
      );
    }, stream: null,);
  }

  
  
  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return SizedBox( width: 400,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            iconColor: colorUtils,
            icon: const Icon(Icons.lock_outline_rounded),
            labelText: 'contraseña',
            border: const OutlineInputBorder(
              borderRadius: 
              BorderRadius.all(
                Radius.circular(15)))
        ),
        onChanged: (value) {

        },
       ));
    }, stream: null,);
  }
  
  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(height: 50,width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(colors: [
          Color(0xFFD945FC),
          Color(0xFFE54880),
        ])
      ),
        child: TextButton(
          onPressed: () {}, 
          child: const Text('Registrarse',style: TextStyle(
            fontSize: 20,color: Colors.black
          ),)),
      );
    }, stream: null,);
  }
}



