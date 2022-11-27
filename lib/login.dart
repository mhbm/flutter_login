import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: MediaQuery.of(context).size.width > 992
            ? [
                Expanded(
                    child: Image.asset(
                  'image.jpg',
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )),
                const Content()
              ]
            : MediaQuery.of(context).size.width > 576
                ? [
                    Center(
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: const [Content()])))
                  ]
                : [const Content()]);
  }

  void onChanged(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }
}

// class Content extends StatelessWidget {
//   const Content({Key? key}) : super(key: key);

//   @override
//   Widget build(context) => Expanded(
//         child: Container(
//           constraints: const BoxConstraints(maxWidth: 21),
//           padding: const EdgeInsets.symmetric(horizontal: 30),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const SizedBox(height: 8),
//               const Text(
//                 'Login',
//               ),
//               const SizedBox(height: 35),
//               const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'abc@example.com',
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: '********',
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.grey,
//                       width: 1,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 100),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                 ),
//                 child: const Text(
//                   'Entrar',
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
// }

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  // Widget build(context) => Container(
  //       width: 320,
  //       height: 480,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           // const SizedBox(
  //           //   height: 80,
  //           //   width: 300,
  //           //   child: (const Text(
  //           //     'Logi22n',
  //           //   )),
  //           // ),
  //           // const SizedBox(height: 35),
  //           // const TextField(
  //           //   decoration: InputDecoration(
  //           //     labelText: 'Email',
  //           //     hintText: 'abc@example.com',
  //           //     enabledBorder: OutlineInputBorder(
  //           //       borderSide: BorderSide(
  //           //         color: Colors.grey,
  //           //         width: 1,
  //           //       ),
  //           //     ),
  //           //     focusedBorder: OutlineInputBorder(
  //           //       borderSide: BorderSide(
  //           //         color: Colors.grey,
  //           //         width: 1,
  //           //       ),
  //           //     ),
  //           //   ),
  //           // ),
  //           // const SizedBox(height: 20),
  //           // const TextField(
  //           //   obscureText: true,
  //           //   decoration: InputDecoration(
  //           //     labelText: 'Password',
  //           //     hintText: '********',
  //           //     enabledBorder: OutlineInputBorder(
  //           //       borderSide: BorderSide(
  //           //         color: Colors.grey,
  //           //         width: 1,
  //           //       ),
  //           //     ),
  //           //     focusedBorder: OutlineInputBorder(
  //           //       borderSide: BorderSide(
  //           //         color: Colors.grey,
  //           //         width: 1,
  //           //       ),
  //           //     ),
  //           //   ),
  //           // ),
  //           // const SizedBox(height: 100),
  //           // TextButton(
  //           //   onPressed: () {},
  //           //   style: TextButton.styleFrom(
  //           //     backgroundColor: Colors.green,
  //           //     padding: const EdgeInsets.symmetric(
  //           //       vertical: 20,
  //           //       horizontal: 10,
  //           //     ),
  //           //   ),
  //           //   child: const Text(
  //           //     'Entrar',
  //           //     style: TextStyle(
  //           //       color: Colors.white,
  //           //     ),
  //           //   ),
  //           // ),
  //         ],
  //       ),
  //     );
  Widget build(context) => Container(
      width: 320,
      height: 480,
      child: Stack(children: [
        Positioned(
          left: 7,
          top: 108,
          child: SizedBox(
            height: 32,
            width: 306,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Text('Entrar',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ),
          ),
        ),
        Positioned(
          left: 7,
          top: 52,
          child: SizedBox(
            height: 23,
            width: 306,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        Positioned(
          left: 7,
          top: 174,
          child: SizedBox(
            height: 23,
            width: 306,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        Positioned(left: 27, top: 362, child: Text('Login'))
      ]));
}
//   Widget build(context) => Container(
//       width: 320,
//       height: 480,
//       child: Stack(children: const [
//         Positioned(
//           left: 7.0,
//           top: 181.0,
//           child: SizedBox(
//             height: 23,
//             width: 306,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 7.0,
//           top: 227.0,
//           child: SizedBox(
//             height: 23,
//             width: 306,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.grey,
//                     width: 1,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ]));
// }
