import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
  bool isCameraGranted = false;
  bool isLocationGranted = false;
  bool isCalenderGranted = false;
  bool isAudioGranted = false;
  bool isBluetoothGranted = false;
  bool isContactGranted = false;
  bool isSmsGranted = false;
  bool isMicrophoneGranted = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Permission_handler"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {
              openAppSettings();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Camera'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isCameraGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isCameraGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.camera.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isCameraGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Location'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isLocationGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isLocationGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.location.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isLocationGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Calender'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isCalenderGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isCalenderGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.calendar.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isCalenderGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.audiotrack),
              title: const Text('Audio'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isAudioGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isAudioGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.audio.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isAudioGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.bluetooth),
              title: const Text('Bluetooth'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isBluetoothGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isBluetoothGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.bluetooth.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isBluetoothGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.contact_page_outlined),
              title: const Text('Contact'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isContactGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isContactGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.contacts.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isContactGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.sms_outlined),
              title: const Text('Sms'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isSmsGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isSmsGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.sms.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isSmsGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.mic_none),
              title: const Text('Microphone'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Permission'),
                        content: (isMicrophoneGranted == false)
                            ? Text('Permission Denied')
                            : Text("Permission Granted"),
                        actions: [
                          (isMicrophoneGranted == false)
                              ? ElevatedButton(
                                  onPressed: () async {
                                    PermissionStatus res =
                                        await Permission.microphone.request();

                                    if (res == PermissionStatus.granted) {
                                      setState(() {
                                        isMicrophoneGranted = true;
                                      });
                                    }
                                  },
                                  child: const Text('Request'),
                                )
                              : Container(),
                        ],
                      );
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
