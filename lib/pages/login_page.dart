import 'package:flutter/material.dart';
import '../widgets/blur_widget.dart';
import 'home_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/Vector.png"),
                  fit: BoxFit.cover
                )
              ),
            ),

            Positioned(
              bottom: 1,
              left: 10,
              child: Container(
                height: 350,
                width: 550,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/onpas.png")
                  )
                ),
              ),
            ),

            ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 100,
                  width: 200,
                  margin: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    "assets/images/tepchappc.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),


            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Whatever happens here, stays here",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          "Please fill the form on the below.",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white
                          ),
                        ),

                        const SizedBox(height: 40),

                        BlurContainer(
                            radius: 20,
                            blur: 10,
                            child: Container(
                              width: 300,
                              height: 500,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.9)
                                  )
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white
                                    ),
                                  ),

                                  const SizedBox(height:20),

                                  Container(
                                    margin: const EdgeInsets.only(right: 180),
                                    child: const Text(
                                      "Your name",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: "Your name",
                                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(color: Colors.white)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              borderSide: const BorderSide(color: Colors.white)
                                          )
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  Container(
                                    margin: const EdgeInsets.only(right: 180),
                                    child: const Text(
                                      "Password",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: TextField(
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: "Password",
                                        suffixIcon: IconButton(
                                            onPressed: (){
                                              isVisible = !isVisible;
                                              setState(() {});
                                            },
                                            icon: isVisible ? const Icon(Icons.visibility, color: Colors.black,): const Icon(Icons.visibility_off, color: Colors.black,)
                                        ),
                                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: const BorderSide(color: Colors.white)
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            borderSide: const BorderSide(color: Colors.white)
                                        ),
                                      ),
                                      obscureText: isVisible,
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  const Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white
                                    ),
                                  ),

                                  const SizedBox(height: 20),

                                  MaterialButton(
                                    onPressed: (){
                                      User user = User(name: controllerName.text, password: controllerPassword.text);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context)=>const HomePage(),
                                            settings: RouteSettings(
                                              arguments: user
                                            )
                                          )
                                      );
                                    },
                                    child: Container(
                                      width: 300,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Lets go",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white
                                            ),
                                          ),

                                          SizedBox(width: 5),

                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 14,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height:50),

                                  const Text(
                                    "Do you have account? Sign UP",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white
                                    ),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      );
  }
}

class User{
  String name;
  String password;

  User({required this.name, required this.password});
}
