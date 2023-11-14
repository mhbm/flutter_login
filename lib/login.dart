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
    return const Content();
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

  // @override
  // Widget build(context) => Container(
  //       width: 320,
  //       height: 480,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           const SizedBox(
  //             height: 80,
  //             width: 300,
  //             child: (Text(
  //               'Login',
  //             )),
  //           ),
  //           // const SizedBox(height: 35),
  //           const TextField(
  //             decoration: InputDecoration(
  //               labelText: 'Email',
  //               hintText: 'abc@example.com',
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Colors.grey,
  //                   width: 1,
  //                 ),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Colors.grey,
  //                   width: 1,
  //                 ),
  //               ),
  //             ),
  //           ),
  //           const SizedBox(height: 20),
  //           const TextField(
  //             obscureText: true,
  //             decoration: InputDecoration(
  //               labelText: 'Password',
  //               hintText: '********',
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Colors.grey,
  //                   width: 1,
  //                 ),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                   color: Colors.grey,
  //                   width: 1,
  //                 ),
  //               ),
  //             ),
  //           ),
  //           const SizedBox(height: 100),
  //           TextButton(
  //             onPressed: () {},
  //             style: TextButton.styleFrom(
  //               backgroundColor: Colors.green,
  //               padding: const EdgeInsets.symmetric(
  //                 vertical: 20,
  //                 horizontal: 10,
  //               ),
  //             ),
  //             child: const Text(
  //               'Entrar',
  //               style: TextStyle(
  //                 color: Colors.white,
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     );

  // @override
  // Widget build(context) => Container(
  //     width: 320,
  //     height: 480,
  //     child: Stack(children: [
  //       Positioned(left: 143, top: 102, child: Text('Login')),
  //       Positioned(
  //         left: 7,
  //         top: 239,
  //         child: SizedBox(
  //           height: 23,
  //           width: 306,
  //           child: TextField(
  //             decoration: InputDecoration(
  //               labelText: 'Password',
  //               border: OutlineInputBorder(),
  //             ),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         left: 7,
  //         top: 284,
  //         child: SizedBox(
  //           height: 23,
  //           width: 306,
  //           child: TextField(
  //             decoration: InputDecoration(
  //               labelText: 'Email',
  //               border: OutlineInputBorder(),
  //             ),
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         left: 7,
  //         top: 416,
  //         child: SizedBox(
  //           height: 25,
  //           width: 306,
  //           child: TextButton(
  //             onPressed: () {},
  //             style: TextButton.styleFrom(
  //               backgroundColor: Color.fromRGBO(170, 187, 204, 1),
  //             ),
  //             child: Text('Entrar',
  //                 style: TextStyle(
  //                   color: Color.fromRGBO(255, 255, 255, 1),
  //                 )),
  //           ),
  //         ),
  //       )
  //     ]));

  @override
  Widget build(context) => Column(children: [
        Row(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(
                left: 143,
                top: 102,
              ),
              constraints: BoxConstraints(
                minHeight: 28,
                maxHeight: MediaQuery.of(context).size.height / 2,
                maxWidth: MediaQuery.of(context).size.width / 2,
              ),
              child: Text('Login'))
        ]),
        Row(children: <Widget>[
          Container(
              padding: const EdgeInsets.only(
                left: 7,
                top: 71,
              ),
              constraints: BoxConstraints(
                minHeight: 23,
                maxHeight: MediaQuery.of(context).size.height / 2,
                maxWidth: MediaQuery.of(context).size.width / 2,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ))
        ]),
        Row(children: <Widget>[
          Container(
              padding: const EdgeInsets.only(
                left: 7,
                top: 48,
              ),
              constraints: BoxConstraints(
                minHeight: 23,
                maxHeight: MediaQuery.of(context).size.height / 2,
                maxWidth: MediaQuery.of(context).size.width / 2,
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ))
        ]),
        Row(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
              left: 7,
              top: 83,
            ),
            constraints: BoxConstraints(
              minHeight: 25,
              maxHeight: MediaQuery.of(context).size.height / 2,
              maxWidth: MediaQuery.of(context).size.width / 2,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(170, 187, 204, 1),
                minimumSize: const Size.fromHeight(25),
              ),
              child: Text('Entrar',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ),
          )
        ])
      ]);
}
//   Widget build(context) => Container(
//       width: 320,
//       height: 480,
//       child: Stack(children: [
//         Positioned(
//           left: 7,
//           top: 108,
//           child: SizedBox(
//             height: 32,
//             width: 306,
//             child: TextButton(
//               onPressed: () {},
//               style: TextButton.styleFrom(
//                 backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//               ),
//               child: Text('Entrar',
//                   style: TextStyle(
//                     color: Color.fromRGBO(255, 255, 255, 1),
//                   )),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 7,
//           top: 52,
//           child: SizedBox(
//             height: 23,
//             width: 306,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 7,
//           top: 174,
//           child: SizedBox(
//             height: 23,
//             width: 306,
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//         ),
//         Positioned(left: 27, top: 362, child: Text('Login'))
//       ]));
// }
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
