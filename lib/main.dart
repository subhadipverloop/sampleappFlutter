import 'dart:developer';
import 'dart:ffi';
import 'package:uuid/uuid.dart';



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

   
  final Map<String, String> roomMap = {
    "roomVariable" : "only for this room",

  };
  final Map<String, String> userMap = {
    "userVariable" : "user variable for this user"
  };
  bool changed = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Sample Flutter app'),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Flex(
                direction: Axis.vertical,
                children: [
                  changed == false
                      ? const SizedBox()
                      : TextButton(
                          onPressed: () {
                            setState(() {
                              changed = false;
                              log("Verloop Button Presed");
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text(
                            "Verloop Button",
                            style: TextStyle(
                              color: Colors.white
                            ),
                            )),
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
                    var uid = Uuid().v4().toString();
                    // log("uid - $uid");

                    return VerloopWidget(
                      clientId: "subhadipmondal",
                      fcmToken: token,
                      recipeId: "",
                      roomVariables: roomMap,
                      userVariables: userMap,
                      userId: uid,
                      userName: "Flutter - $uid",
                      userEmail: "$uid@flutter.com",
                      userPhone: "1234567890",
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
    // clientIdController.dispose();
    // recipeIdController.dispose();
    log("isbdhc");
    super.dispose();
    
  }
}