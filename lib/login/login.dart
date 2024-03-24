
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 95, 201),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 500,
              maxHeight: 500,
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(48),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTitle('👋🏽 Bem Vindo(a)'),
                SizedBox(height: 20),
                InputText(placeholder: 'Email'),
                SizedBox(height: 20),
                InputText(placeholder: 'Senha'),
                SizedBox(height: 20),
                SizedBox(
                width: double.infinity,
                child: TextButton(
                onPressed:() {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10,
                      ),
                    textStyle: TextStyle(
                      fontSize: 16,
                      
                      ),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Entrar'),
                   ),
                  ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  
  } 
}

      class InputText extends StatelessWidget{
        final String? placeholder;
        InputText({this.placeholder});

        @override
        Widget build(BuildContext context){
          return TextField(
                  style: GoogleFonts.inter(
                    fontSize: 16, 
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                        ),
                  hintText: placeholder,
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5)
                      ),
                    ),
                  );
                  TextField(
                    style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ),
                      hintText: placeholder,
                      filled: true,
                      fillColor: Colors.white,
                    )
                  );
                }
              }

      class AppTitle extends StatelessWidget{
        final String title;
        AppTitle(this.title);
      
        @override
        Widget build(BuildContext context){
          return Text(
               title,
            style: GoogleFonts.inter(
              color: Color.fromARGB(255, 72, 95, 201),
              fontWeight: FontWeight.bold,
              fontSize: 32,
                ),
             );
            
        }
    }
