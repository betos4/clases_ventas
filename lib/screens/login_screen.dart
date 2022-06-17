import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            cajapurpura(size),
            iconopersona(),
            loginform(context),
          ],
        ),
      ),
    );
  }

  Column loginform(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 250,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          'Crear una nueva cuenta',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  SafeArea iconopersona() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  Container cajapurpura(Size size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(63, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      ),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            child: burbuja(),
            top: 90,
            left: 30,
          ),
          Positioned(
            child: burbuja(),
            top: -40,
            left: -30,
          ),
          Positioned(
            child: burbuja(),
            top: -50,
            right: -20,
          ),
          Positioned(
            child: burbuja(),
            bottom: -50,
            left: 10,
          ),
          Positioned(
            child: burbuja(),
            bottom: 120,
            right: 20,
          ),
        ],
      ),
    );
  }

  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
