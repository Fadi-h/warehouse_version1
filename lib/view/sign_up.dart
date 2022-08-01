import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warehouse_version1/controller/sign_up_controller.dart';

class SignUp extends StatelessWidget {

  SignUpController signUpController = SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background_login.jpg'))),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black.withOpacity(0.7),
            ),
            SingleChildScrollView(
              child:  Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height  * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              controller: signUpController.name,
                              validator: (name) {
                                if (name!.isEmpty) {
                                  return 'Username cannot be empty';
                                } else if (name.length < 4) {
                                  return 'Username must be al least 4 characters long';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                prefixIcon:
                                Icon(Icons.person, color: Colors.white),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(width: 1, color: Colors.white),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white)),
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                                labelText: 'Name',
                                hintText: 'Enter Your Name',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Container(
                            height: 80,
                            child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                controller: signUpController.email,
                                validator: (email) {
                                  if (email!.isEmpty) {
                                    return 'email is empty';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                    prefixIcon:
                                    Icon(Icons.email, color: Colors.white),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.white),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.white)),
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    labelText: 'Email',
                                    hintText: 'Enter Your valid Email',
                                    hintStyle: TextStyle(color: Colors.white)
                                ),
                                keyboardType: TextInputType.emailAddress),
                          ),
                          Container(
                            height: 80,
                            child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                obscureText: true,
                                controller: signUpController.pass,
                                validator: (pass) {
                                  if (pass!.length < 6) {
                                    return 'Password must be at least 6 characters long';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                  prefixIcon:
                                  Icon(Icons.vpn_key, color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.white)),
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  labelText: 'Password',
                                  hintText: 'Enter Your Password',
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                keyboardType: TextInputType.visiblePassword),
                          ),
                          Container(
                            height: 80,
                            child: TextFormField(
                                style: const TextStyle(color: Colors.white),
                                obscureText: true,
                                controller: signUpController.confirmPass,
                                validator: (confirmpass) {
                                  if (confirmpass != signUpController.pass.value.text) {
                                    return 'Passwords do not match!';
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                    errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                    prefixIcon:
                                    Icon(Icons.vpn_key, color: Colors.white),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.white),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(width: 1, color: Colors.white)),
                                    labelStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    labelText: 'Confirm Password',
                                    hintText: 'Confirm Your Password',
                                    hintStyle: TextStyle(color: Colors.white)
                                ),
                                keyboardType: TextInputType.name),
                          ),
                          Container(
                            height: 80,
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              controller: signUpController.mobile,
                              validator: (id) {
                                if (id!.isEmpty) {
                                  return 'mobile number is empty';
                                }else if(id.toString().length < 9) {
                                  return'mobile number must be 9 digits';
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                  errorStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                                  prefixIcon:
                                  Icon(Icons.phone, color: Colors.white),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1, color: Colors.white),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(width: 1, color: Colors.white)),
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  labelText: 'Mobile number',
                                  hintText: 'Enter Your mobile number',
                                  hintStyle: TextStyle(color: Colors.white)
                              ),
                              keyboardType: TextInputType.number,
                              maxLength: 9,
                            ),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          // signUpController.signUp(context);
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: const Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
