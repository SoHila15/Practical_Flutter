import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants.dart';
import 'Login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController studentEmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  bool isShowPassword = true;
  bool isShowConfirmPassword = true;

  Future<void> saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', emailController.text);
    await prefs.setString('password', passwordController.text);
    print("Data Saved: ${emailController.text} - ${passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/img.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                        color: AppConstants.scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Register".toUpperCase(),
                          style: const TextStyle(
                              color: AppConstants.primaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: nameController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                // labelText: "Email",
                                hintText: "Name",
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.account_circle_outlined,
                                  color: AppConstants.primaryColor,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: AppConstants.primaryColor,
                                    ))),
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your name";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: emailController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                // labelText: "Email",
                                hintText: "Email",
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  color: AppConstants.primaryColor,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: AppConstants.primaryColor,
                                    ))),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter an email";
                              } else if (!RegExp(
                                      r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                                  .hasMatch(value)) {
                                return "Please enter a valid email address";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: phoneController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                // labelText: "Email",
                                hintText: "Phone Number",
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: AppConstants.primaryColor,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: AppConstants.primaryColor,
                                    ))),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter phone number";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: isShowPassword,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                // labelText: "Email",
                                hintText: "Password",
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: AppConstants.primaryColor,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isShowPassword = !isShowPassword;
                                    });
                                  },
                                  icon: Icon(
                                    isShowPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off_outlined,
                                    color: AppConstants.primaryColor,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: AppConstants.primaryColor,
                                    ))),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter password";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            controller: confirmPasswordController,
                            obscureText: isShowConfirmPassword,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                // labelText: "Email",
                                hintText: "Confirm Password",
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                fillColor: Colors.white,
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                  color: AppConstants.primaryColor,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isShowConfirmPassword =
                                          !isShowConfirmPassword;
                                    });
                                  },
                                  icon: Icon(
                                    isShowConfirmPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off_outlined,
                                    color: AppConstants.primaryColor,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: AppConstants.primaryColor,
                                    ))),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter confirm password";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () async {
                                await saveUserData();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LogInScreen()));
                              },
                              style: ButtonStyle(
                                backgroundColor: const WidgetStatePropertyAll(
                                  AppConstants.primaryColor,
                                ),
                                shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Create Account",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account ? ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const LogInScreen()));
                              },
                              style: ButtonStyle(
                                  shape: WidgetStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
