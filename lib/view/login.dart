import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warehouse_version1/controller/login_controller.dart';
import 'package:warehouse_version1/view/home.dart';
import 'package:warehouse_version1/view/sign_up.dart';


class Login extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
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
                child: Container(
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        child: const Center(
                          child: Text(
                            'Welcome to the \n Warehouse application',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 800),
                        child: loginController.loginOption.value == true
                            ? Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width  * 0.8,
                                  height: 80,
                                  child: TextFormField(
                                    style: const TextStyle(
                                        color: Colors.white),
                                    controller: loginController.email,
                                    validator: (email) {
                                      if (email!.isEmpty) {
                                        return 'Username cannot be empty';
                                      } else if (email.length < 4) {
                                        return 'Username must be al least 4 characters long';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold),
                                      prefixIcon: Icon(Icons.email_outlined,
                                          color: Colors.white),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Colors.white),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.white)),
                                      labelStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      labelText: 'Email',
                                      hintText: 'Enter Your Email',
                                      hintStyle:
                                      TextStyle(color: Colors.white),
                                    ),
                                    keyboardType: TextInputType.name,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width  * 0.8,
                                  height: 80,
                                  child: TextFormField(
                                      style: const TextStyle(
                                          color: Colors.white),
                                      obscureText: loginController
                                          .showPassword.value,
                                      controller: loginController.pass,
                                      validator: (pass) {
                                        if (pass!.length < 6) {
                                          return 'Password must be at least 6 characters long';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on passwordVisible state choose the icon
                                            loginController
                                                .showPassword.value
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            loginController
                                                .showPassword.value =
                                            !loginController
                                                .showPassword.value;
                                          },
                                        ),
                                        errorStyle: const TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                        prefixIcon: const Icon(
                                            Icons.vpn_key,
                                            color: Colors.white),
                                        focusedBorder:
                                        const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: Colors.white),
                                        ),
                                        enabledBorder:
                                        const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                width: 1,
                                                color: Colors.white)),
                                        labelStyle: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        labelText: 'Password',
                                        hintText: 'Enter Your Password',
                                        hintStyle: const TextStyle(
                                            color: Colors.white),
                                      ),
                                      keyboardType:
                                      TextInputType.visiblePassword),
                                ),
                                const SizedBox(height: 40),
                                GestureDetector(
                                  onTap: (){
                                    print('login');
                                    // loginController.submit(context);
                                    /// login operation
                                    Get.to(()=> Home());
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width  * 0.8,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(fontSize: 18, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text('Don\'t have an account yet?',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    TextButton(
                                      onPressed: () {
                                        Get.to(()=> SignUp());
                                      },
                                      child: const Text('Sign Up',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              decoration: TextDecoration.underline)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                            : Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  loginController.loginOption.value = true;
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=> SignUp());
                                },
                                child: Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.8,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
