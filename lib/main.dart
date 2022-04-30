// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/HttpsSarvices.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   TextEditingController titleController = TextEditingController();
//   var postData;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('HttpsPost APIcalling'),
//           backgroundColor: Colors.black,
//           centerTitle: true,
//         ),
//         body: Container(
//           child: Column(
//             children: [
//               TextField(
//                 controller: titleController,
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   var post = await createUser(titleController.text);
//                   setState(() {
//                     postData = post;
//                   });
//                 },
//                 child: Text('Post Data'),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               postData == null
//                   ? Container(
//                  // height: 100,width: 100,color: Colors.black,
//               )
//                   : Text(
//                       'This data title :- ${postData!.title},${postData!.id} is Created',style: TextStyle(color: Colors.black),),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   bool a = false;
//   GoogleSignIn _b = GoogleSignIn();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Sign in Button'),
//           centerTitle: true,
//           backgroundColor: Colors.black,
//         ),
//         body: a
//             ? Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.network(
//                       _b.currentUser!.photoUrl.toString(),
//                       height: 150,
//                       width: 150,
//                       fit: BoxFit.cover,
//                     ),
//                     Text(_b.currentUser!.displayName.toString()),
//                     Text(_b.currentUser!.email.toString()),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 8.0),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: Colors.white,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(30))),
//                         onPressed: () {
//                           SignOut();
//                         },
//                         child: Image.network(
//                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiLk0h7MwUDJBkABZklY1Q9PuB9COAQKxgkQ&usqp=CAU",
//                           fit: BoxFit.cover,
//                           width: 50,
//                           height: 50,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             : Center(
//                 child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30))),
//                 onPressed: () {
//                   SignIn();
//                 },
//                 child: CircleAvatar(
//                   child: Image.network(
//                     "https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1",
//                     fit: BoxFit.cover,
//                     width: 50,
//                     height: 50,
//                   ),
//                 ),
//               )));
//   }
//
//   SignIn() async {
//     try {
//       await _b.signIn();
//       setState(() {
//         a = true;
//       });
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   SignOut() async {
//     _b.signOut();
//     setState(() {
//       a = false;
//     });
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   String a = '';
//   String b = '';
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     location();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Location'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(a),
//             Text(b),
//           ],
//         ),
//       ),
//     );
//   }
//
//   location() async {
//     var location = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.best);
//     setState(() {
//       a = "${location.altitude}";
//       b = "${location.longitude}";
//     });
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   // var url = 'https://mysy.guj.nic.in/';
//   var url = 'https://www.youtube.com/';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WEB VIEW'),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: WebView(
//         initialUrl: url,
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   VideoPlayerController? _controller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _controller = VideoPlayerController.network(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//       })
//       ..setLooping(true)
//       ..addListener(() {
//         setState(() {});
//       });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Player'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: _controller!.value.isInitialized
//                 ? _videoUi()
//                 : CircularProgressIndicator(),
//           )
//         ],
//       ),
//     );
//   }
//
//   _videoUi() {
//     return Row(
//       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           height: 300,
//           width: 200,
//           child: Column(
//             children: [
//               AspectRatio(
//                 aspectRatio: _controller!.value.aspectRatio,
//                 child: VideoPlayer(_controller!),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         _controller!.value.isPlaying
//                             ? _controller!.pause()
//                             : _controller!.play();
//                       });
//                     },
//                     icon: Icon(_controller!.value.isPlaying
//                         ? Icons.pause
//                         : Icons.play_arrow),
//                   ),
//                   Text(
//                           '${_controller!.value.position.inHours}:'
//                           '${_controller!.value.position.inMinutes}:'
//                           '${_controller!.value.position.inSeconds}/'
//                           '${_controller!.value.duration.inHours}:'
//                           '${_controller!.value.duration.inMinutes}:'
//                           '${_controller!.value.duration.inHours}'),
//                 ],
//               ),
//               VideoProgressIndicator(_controller!, allowScrubbing: false),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: 10,
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:share_plus/share_plus.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   var _controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Share & Call'),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             TextField(
//               controller: _controller,
//             ),
//             IconButton(
//                 onPressed: () {
//                   launch("tel:${_controller.text}");
//                 },
//                 icon: Icon(Icons.call)),
//             IconButton(
//                 onPressed: () {
//                   Share.share(_controller.text);
//                 },
//                 icon: Icon(Icons.share)),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Myapp(),
//   ),);
// }
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Lottie"),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Lottie.asset('Lottie/46864-lovely-cats.json'),
//       ),
//     );
//   }
// }
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   var result = '';
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     chekStuts();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text('Connectivity Cheak'),
//       ),
//       body: Container(
//         child: Center(
//           child: Text(
//             result != null ? result : 'Unkown',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
//
//   chekStuts() {
//     Connectivity().onConnectivityChanged.listen((event) {
//       if (event == ConnectivityResult.mobile ||
//           event == ConnectivityResult.wifi) {
//         changeValue('Connect');
//       } else {
//         setState(() {
//           result = 'No InterNet';
//         });
//       }
//     });
//   }
//
//   changeValue(String s) {
//     setState(() {
//       result = s;
//     });
//   }
// }
// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   File? imageFile;
//   final _picker = ImagePicker();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Picker'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: ListView(
//         children: [
//           ButtonBar(
//             children: [
//               IconButton(
//                 onPressed: () async {
//                   await _pickImageFromCamera();
//                 },
//                 icon: Icon(Icons.camera, color: Colors.redAccent, size: 35),
//               ),
//               IconButton(
//                 onPressed: () async {
//                   await _pickImageFromGallary();
//                 },
//                 icon: Icon(Icons.photo, color: Colors.green, size: 35),
//               ),
//             ],
//           ),
//           if (imageFile == null) Placeholder() else Image.file(imageFile!),
//         ],
//       ),
//     );
//   }
//
//   Future _pickImageFromCamera() async {
//     var pickedFile = await _picker.pickImage(source: ImageSource.camera);
//     setState(() {
//       imageFile = File(pickedFile!.path);
//     });
//   }
//
//   Future _pickImageFromGallary() async {
//     final XFile? _pickedFile =
//         await _picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       imageFile = File(_pickedFile!.path);
//     });
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Myapp(),
//   ),);
// }
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text('Rich Text'),
//       ),
//       body: Row(
//         children: [
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: RichText(
//                 text: TextSpan(
//                   text: 'PLAY',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
//                   children: [
//                     TextSpan(
//                       text: 'i',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.deepOrange),
//                     ),
//                     TextSpan(
//                       text: 't',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white,),
//                     ),
//                   ]
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   FlutterLocalNotificationsPlugin? _a;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     var androidd = AndroidInitializationSettings('app_icon');
//     var ioss = IOSInitializationSettings();
//     var mix = InitializationSettings(android: androidd, iOS: ioss);
//     _a = FlutterLocalNotificationsPlugin();
//     _a?.initialize(mix, onSelectNotification: message);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Local Notifaction'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: _showNotifaction,
//           child: Text('Notifaction'),
//         ),
//       ),
//     );
//   }
//
//   message(String? payload) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: Text('How Are You ??'),
//         title: Text('Hello'),
//         elevation: 5,
//         backgroundColor: Colors.yellow.shade50,
//         actions: [
//           ButtonBar(
//             children: [
//               TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'YES',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   )),
//               TextButton(
//                   onPressed: () {},
//                   child: Text(
//                     'NO',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _showNotifaction() async {
//     var androidD = AndroidNotificationDetails("channelId", "channelName");
//     var iosD = IOSNotificationDetails();
//     var mixx = NotificationDetails(iOS: iosD, android: androidD);
//     await _a?.show(0, "Hello", 'How Are You ??', mixx);
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'multiL.dart';
//
//
// void main() async {
//   runApp(
//     GetMaterialApp(
//       translations: MultiLanguage(),
//       debugShowCheckedModeBanner: false,
//       home: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   var locale = [
//     {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
//     {'name': 'हिन्दी', 'locale': Locale('hi', 'IN')},
//     {'name': 'ಕನ್ನಡ', 'locale': Locale('kn', 'IN')},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppBar'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'name'.tr,
//               style: TextStyle(fontSize: 30),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               'surname'.tr,
//               style: TextStyle(fontSize: 30),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               'age'.tr,
//               style: TextStyle(fontSize: 30),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 updateLanguage(context);
//               },
//               child: Text('Change Language'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   updateLanguage(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Choice Language...'),
//         content: Container(
//           width: double.maxFinite,
//           child: ListView.separated(
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.all(10),
//                 child: GestureDetector(
//                   child: Text(locale[index]['name'].toString()),
//                   onTap: () {
//                     updateLang(locale[index]['locale']);
//                   },
//                 ),
//               );
//             },
//             separatorBuilder: (BuildContext context, int index) {
//               return Divider(
//                 color: Colors.deepOrange,
//               );
//             },
//             itemCount: locale.length,
//           ),
//         ),
//       ),
//     );
//   }
//
//   updateLang(locale) {
//     Get.back();
//     Get.updateLocale(locale);
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:untitled/multiL.dart';
//
// void main() {
//   runApp(
//     GetMaterialApp(
//       translations: MultiL(),
//       locale: Locale('en', 'US'),
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatelessWidget {
//   var locale = [
//     {
//       'name': 'ENGLISH',
//       "locale": Locale('en', 'US'),
//     },
//     {
//       'name': 'HINDI',
//       "locale": Locale('hi', 'IN'),
//     },
//     {
//       'name': 'KADDADA',
//       "locale": Locale('kn', 'IN'),
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         title: Text('Get X'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('name'.tr),
//             SizedBox(
//               height: 10,
//             ),
//             Text('sarname'.tr),
//             SizedBox(
//               height: 10,
//             ),
//             Text('age'.tr),
//             ElevatedButton(
//                 onPressed: () {
//                   buildDialog(context);
//                 },
//                 child: Text('ChangeL'))
//           ],
//         ),
//       ),
//     );
//   }
//
//   buildDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('ChangeL'),
//         content: Container(
//           width: double.maxFinite,
//           child: ListView.separated(
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.all(10),
//                 child: GestureDetector(
//                   child: Text(locale[index]["name"].toString()),
//                   onTap: () {
//                     updateL(locale[index]['locale']);
//                   },
//                 ),
//               );
//             },
//             separatorBuilder: (BuildContext context, int index) {
//               return Divider(
//                 color: Colors.black,
//               );
//             },
//             itemCount: locale.length,
//           ),
//         ),
//       ),
//     );
//   }
//
//   updateL(locale) {
//     Get.back();
//     Get.updateLocale(locale);
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:untitled/HttpsSarvices.dart';
//
// import 'HttpsSarvices.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   TextEditingController agecon = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ProVider'),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: ChangeNotifierProvider<EligibiltyChek>(
//         create: (context) => EligibiltyChek(),
//         child: Consumer<EligibiltyChek>(
//           builder: (context, provider, child) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 50,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (provider.isEligibilty == null)
//                         ? Colors.grey.shade500
//                         : provider.isEligibilty!
//                             ? Colors.green
//                             : Colors.red,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 TextField(
//                   controller: agecon,
//                   decoration: InputDecoration(
//                     hintText: 'Enter Your Age',
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     provider.checkEligible(int.parse(agecon.text.trim()));
//                   },
//                   child: Container(
//                     margin: EdgeInsets.all(10),
//                     child: Center(child: Text('Check Eligibility')),
//                     color: Colors.greenAccent,
//                     height: 20,
//                     width: double.infinity,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(provider.eligibiltyMessage),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   static final CameraPosition cameraPosition = CameraPosition(
//     zoom: 14.4746,
//     target: LatLng(37.42796133580664, -122.085749655962),
//   );
//   GoogleMapController? _controller;
//   List<Marker> marker = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Map'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: GoogleMap(
//         initialCameraPosition: cameraPosition,
//         mapType: MapType.normal,
//         onMapCreated: (g) {
//           setState(() {
//             _controller = g;
//           });
//         },
//         onTap: (value) {
//           _controller?.animateCamera(CameraUpdate.newLatLng(value));
//           _handleTap(value);
//         },
//         markers: Set.from(marker),
//       ),
//     );
//   }
//
//   _handleTap(LatLng value) {
//     marker = [];
//     setState(() {
//       marker.add(Marker(markerId: MarkerId(value.toString()), position: value));
//     });
//   }
// }
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: true,
//       builder: (BuildContext context) {
//         return MaterialApp(
//           useInheritedMediaQuery: true,
//           locale: DevicePreview.locale(context),
//           builder: DevicePreview.appBuilder,
//           debugShowCheckedModeBanner: false,
//           home: Myapp(),
//         );
//       },
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   @override
//   Widget build(BuildContext context) {
//     MediaQueryData mediaQueryData = MediaQuery.of(context);
//     var _width = mediaQueryData.size.width;
//     var _height = mediaQueryData.size.height;
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBar(
//             centerTitle: true,
//             backgroundColor: Colors.black,
//             title: Text('Responsive'),
//           ),
//           body:
//               //   Container(
//               //   alignment: Alignment.center,
//               //   width: _width,
//               //   height: _height * 0.5,
//               //   color: Colors.deepOrange,
//               //   child: Text(
//               //     'Hello Flutter',
//               //     style: TextStyle(fontSize: _width * 0.10),
//               //   ),
//               // ),
//               //
//               Center(
//             child: Column(
//               children: [
//                 Flexible(
//                   flex: 1,
//                   child: Container(
//                     color: Colors.deepOrange,
//                   ),
//                 ), Flexible(
//                   flex: 2,
//                   child: Container(
//                     color: Colors.blue,
//                   ),
//                 ), Flexible(
//                   flex: 3,
//                   child: Container(
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(
//     home: Myapp(),
//   ),);
// }
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   bool a=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Task'),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             ElevatedButton(onPressed: () {
//
//             }, child: if())
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() => runApp(App());
//
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter ElevatedButton Shadow Color Example',
//       home: FlutterExample(),
//     );
//   }
// }
//
// class FlutterExample extends StatefulWidget {
//   @override
//   _FlutterExampleState createState() => _FlutterExampleState();
// }
//
// class _FlutterExampleState extends State<FlutterExample> {
//   var buttonText = 'Click Me!';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Flutter Change Button Text On Press')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             setState(() {
//               buttonText = 'Loading...';
//             });
//           },
//           style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
//           child: Text(buttonText),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Myapp(),
//     ),
//   );
// }
//
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
//
// class _MyappState extends State<Myapp> {
//   var a = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.black,
//         title: Text('Button Change'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//                 onPressed: () {
//                   setState(() {
//                     a = true;
//                   });
//                 },
//                 child: Text(a == false ? 'OK' : 'DONE')),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:untitled/appColors/app_colors.dart';


import 'Screens/MyBottomBar/MyBottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: AppColors.baseBlackColor
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyBottomBar(),
    );
  }
}

