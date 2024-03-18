// import 'package:flutter/material.dart';

// import 'package:verloop_flutter_sdk/verloop_flutter_sdk.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// void main() async{

//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );


//   // runApp(
//   //   MaterialApp(
//   //     debugShowCheckedModeBanner: false,
//   //     home: Myapp(),
//   //   )
//   //   );

//   const String _clientId = "subhadipmondal";

//     runApp(
//     MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: const Text('Sample Flutter APP'),
//       ),
//       body: Center(
//         child: Text('Running for client $_clientId'),
//       ),
//       floatingActionButton: FutureBuilder<String?>(
//         future: FirebaseMessaging.instance.getToken(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             print('inside error');
//             return const Text("Something went wrong");
//           }
//           if (snapshot.hasData && snapshot.data != "") {
//             print(snapshot.data);
//             String token = snapshot.data ?? "";
//             return VerloopWidget(
//               clientId: _clientId, 
//               userId: "150", 
//               recipeId: "68d5a19e-18b5-4e62-bb28-e4c961b7ddab", 
//               // fcmToken: token,
//               userName: "flutter",
//               overrideUrlOnClick: false,      
//               // onButtonClicked:(String? title, String? payload, String? type) {
//               //  print("button click title $title");
//               // },
              
//               onUrlClicked:(String? url) {
//                 print("url clicked $url");
//               },
//               child: const FloatingActionButton(
//                 onPressed: null,
//                 // onButtonClicked:
//                 child: Icon(Icons.chat),
//               ),
//             );
//           }
//           return const Text("Loading...");
//         },
//       ),
//     ),


//     )

//     );
// }

// // class Myapp extends StatefulWidget{
// //   const Myapp({super.key});

// //   @override
// //   State<Myapp> createState()=>SecondApp();
// //   }

// // class SecondApp extends State<Myapp>{
// //   @override

// //   Widget build(BuildContext context){
// //     return Scaffold(
// //       appBar: AppBar(title: Text("Sample APP"),),
// //       body: Container()
// //     );
// //   }
// // }





// // ----------------------------------
// // ----------------------------------

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // TRY THIS: Try running your application with "flutter run". You'll see
// //         // the application has a purple toolbar. Then, without quitting the app,
// //         // try changing the seedColor in the colorScheme below to Colors.green
// //         // and then invoke "hot reload" (save your changes or press the "hot
// //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// //         // the command line to start the app).
// //         //
// //         // Notice that the counter didn't reset back to zero; the application
// //         // state is not lost during the reload. To reset the state, use hot
// //         // restart instead.
// //         //
// //         // This works for code too, not just values: Most code changes can be
// //         // tested with just a hot reload.
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.

// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {

// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // TRY THIS: Try changing the color here to a specific color (to
// //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //         // change color while the other colors stay the same.
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           //
// //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //           // action in the IDE, or press "p" in the console), to see the
// //           // wireframe for each widget.
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }


// -----------------------------------------

import 'dart:developer';
import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:verloop_flutter_sdk/verloop_flutter_sdk.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Map<String, String> roomMap = {"key1": "value1"};
  final Map<String, String> userMap = {"key2": "value2"};
  String clientId = "hello";
  String? recipeId;
  String? userId;
  String? userName;
  String? userEmail;
  String? userPhone;
  final clientIdController = TextEditingController();
  final recipeIdController = TextEditingController();
  final userIdController = TextEditingController();
  final userNameController = TextEditingController();
  final userEmailController = TextEditingController();
  final userPhoneController = TextEditingController();
  bool changed = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Flex(
                direction: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: clientIdController,
                      onChanged: (String text) {
                        setState(() {
                          clientId = clientIdController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            'Enter the client id eg: hello or hello.stage',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: recipeIdController,
                      onChanged: (String text) {
                        setState(() {
                          recipeId = recipeIdController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the recipe ID',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: userIdController,
                      onChanged: (String text) {
                        setState(() {
                          userId = userIdController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the user Id',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: userNameController,
                      onChanged: (String text) {
                        setState(() {
                          userName = userNameController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the user name',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: userPhoneController,
                      onChanged: (String text) {
                        setState(() {
                          userPhone = userPhoneController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the user phone',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: TextField(
                      controller: userEmailController,
                      onChanged: (String text) {
                        setState(() {
                          userEmail = userEmailController.text;
                          changed = true;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter the user email',
                      ),
                    ),
                  ),
                  Text('Running for client $clientId'),
                  changed == false
                      ? const SizedBox()
                      : TextButton(
                          onPressed: () {
                            setState(() {
                              changed = false;
                            });
                          },
                          child: const Text("Submit")),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: changed == true
            ? const SizedBox()
            : FutureBuilder<String?>(
                // Initialize FlutterFire
                future: FirebaseMessaging.instance.getToken(),
                builder: (context, snapshot) {
                  // Check for errors
                  if (snapshot.hasError) {
                    return const Text("Something went wrong");
                  }
                  if (snapshot.hasData && snapshot.data != "") {
                    String token = snapshot.data ?? "";

                    return VerloopWidget(
                      clientId: clientId,
                      fcmToken: token,
                      recipeId: recipeId,
                      roomVariables: roomMap,
                      userVariables: userMap,
                      userId: userId,
                      userName: userName,
                      userEmail: userEmail,
                      userPhone: userPhone,
                      onButtonClicked:
                          (String? title, String? payload, String? type) {
                        log("button click title $title $payload");
                      },
                      onUrlClicked: (String? url) {
                        log("url clicked $url");
                      },
                      overrideUrlOnClick: true,
                      child: const FloatingActionButton(
                        onPressed: null,
                        child: Icon(Icons.chat),
                      ),
                    );
                  }
                  return const Text("Loading...");
                },
              ),
      ),
    );
  }

  @override
  void dispose() {
    clientIdController.dispose();
    recipeIdController.dispose();
    super.dispose();
  }
}