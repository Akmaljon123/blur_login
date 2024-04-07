import 'package:flutter/material.dart';
import '../widgets/blur_widget.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)?.settings.arguments as User;
    User user1 = user;
    if(user1!=null){
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Vector.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        buildBlurContainer(),
                        const SizedBox(width: 10),
                        buildBlurContainer(),
                        const SizedBox(width: 10),
                        buildBlurContainer(),
                        const SizedBox(width: 10),
                        buildBlurContainer(),
                        const SizedBox(width: 10),
                        buildBlurContainer(),
                        const SizedBox(width: 10),
                        buildBlurContainer()
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  Center(
                    child: BlurContainer(
                      radius: 20,
                      blur: 10,
                      child: Container(
                        width: 300,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        child: Stack(
                          children: [
                            // Your content here
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Welcome to Home Menu",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                const Text(
                                  "Enjoy using our app",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "Name: ${user1.name.toString()}\nPassword: ${user1.password.toString()}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      );
    }else{
      return const Scaffold();
    }
  }
}




Widget buildBlurContainer() {
  return BlurContainer(
    radius: 20,
    blur: 10,
    child: Container(
      width: 400,
      height: 275,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        border: Border.all(
          color: Colors.white.withOpacity(0.9),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              const Text(
                "TBCBank",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 100),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 90),
          Container(
            margin: const EdgeInsets.only(right: 150),
            child: const Text(
              "Akmaljon Ahmadjonov",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 120, left: 10),
                child: const Text(
                  "1234 5678 8901 234",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const Icon(
                Icons.wifi,
                size: 40,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}





