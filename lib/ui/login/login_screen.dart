import 'package:daily_tasks_app/ui/components/custom_button.dart';
import 'package:daily_tasks_app/ui/components/custom_text_form_field.dart';
import 'package:daily_tasks_app/utils/email_validation.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routName = 'Login';

  TextEditingController userNameController=TextEditingController();

  TextEditingController passwordController=TextEditingController();


  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/register_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title:Text('Register',style: Theme.of(context).textTheme.titleSmall,) ,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key:formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CustomTextFormField(labelText: 'User Name',
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  validator: (input) {
                    if(input==null||input.trim().isEmpty){
                      return 'plz, inter user name';
                    }
                    return null;
                  },
                ),

                CustomTextFormField(labelText: 'password',
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  isObscureText: true,
                  validator: (input) {
                    if(input==null||input.trim().isEmpty){
                      return'plz, enter password';
                    }
                    if(input.length < 6){
                      return 'password must be at least 6 chars';
                    }
                    return null;
                  },

                ),

                CustomButton(buttonText: 'Sign-In', onButtonClickedCallBack: signIn)

              ],
            ),
          ),
        ),
      ),
    );
  }
  void signIn(){
    //form validation
    //!(true)
    //!(false)
    //  !(formKey.currentState!.validate())
    if(formKey.currentState!.validate() == false){
      //exit if validate false return
      return;
    }
  }

}
