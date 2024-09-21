import 'package:daily_tasks_app/ui/components/custom_button.dart';
import 'package:daily_tasks_app/ui/components/custom_text_form_field.dart';
import 'package:daily_tasks_app/utils/email_validation.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routName = 'Register';
  TextEditingController fullNameController=TextEditingController();
  TextEditingController userNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmationPasswordController=TextEditingController();

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
                CustomTextFormField(labelText: 'Full Name',
                    keyboardType: TextInputType.text,
                  controller:fullNameController ,
                  validator: (input) {
                    if(input==null||input.trim().isEmpty){
                      return 'plz, inter full name';
                    }
                    if(input.length<8){
                      return'Error, full name must be at least 8 chars';
                    }
                    return null;
                  },
                ),
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
                CustomTextFormField(labelText: 'E-mail',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                validator: (input) {
                  if(input==null||input.trim().isEmpty){
                    return 'plz, enter e-mail address';
                  }
                  // ! false     12345
                  if(isValidEmail(input)){
                    return 'E-mail bad format';
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
                CustomTextFormField(labelText: 'password Confirmation',
                  controller: confirmationPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  isObscureText: true,
                  validator: (input) {
                  if(input==null||input.trim().isEmpty){
                    return'Plz enter password Confirmation';
                  }
                  if(input!=passwordController.text){
                    return'password not match';
                  }
                  return null;

                },
                ),
                CustomButton(buttonText: 'Sign-Up', onButtonClickedCallBack: signUp)

              ],
            ),
          ),
        ),
      ),
    );
  }
  void signUp(){
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
