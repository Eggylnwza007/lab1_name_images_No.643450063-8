import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> persons = [
      {
        "name": "กมล จันบุตรดี",
        "imagePath": "images/กมล จันบุตรดี.jpg",
        "studentId": "643450063-8",
      },
      {
        "name": "ศรันย์ ซุ่นเส้ง",
        "imagePath": "images/ศรันย์ ซุ่นเส้ง.jpg",
        "studentId": "643450086-6",
      },
      {
        "name": "ชาญณรงค์ แต่งเมือง",
        "imagePath": "images/ชาญณรงค์ แต่งเมือง.jpg",
        "studentId": "643450069-6",
      },
      {
        "name": "ก้องภพ ตาดี",
        "imagePath": "images/ก้องภพ ตาดี.jpg",
        "studentId": "643450321-2",
      },
      {
        "name": "นภัสสร ดวงจันทร์",
        "imagePath": "images/นภัสสร ดวงจันทร์.jpg",
        "studentId": "643450326-2",
      },
      {
        "name": "ประสิทธิชัย จันทร์สม",
        "imagePath": "images/ประสิทธิชัย จันทร์สม.jpg",
        "studentId": "643450079-3",
      },
      {
        "name": "สุธาดา เสนามงคล",
        "imagePath": "images/สุธาดา เสนามงคล.jpg",
        "studentId": "643450089-0",
      },
      {
        "name": "เจษฏา พบสมัย",
        "imagePath": "images/เจษฏา พบสมัย.jpg",
        "studentId": "643450323-8",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return displayPersonItem(person: persons[index]);
        },
      ),
    );
  }

  Widget displayPersonItem({required Map<String, dynamic> person}) {
    bool isHighlighted = person["name"] == "กมล จันบุตรดี";
    return Container(
      padding: const EdgeInsets.all(10),
      color: isHighlighted ? Color.fromARGB(255, 123, 255, 0) : Colors.transparent,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(person["imagePath"]),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                person["name"],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
                  color: isHighlighted ? Colors.red : Colors.black,
                ),
              ),
              Text(
                "รหัสนักศึกษา: ${person["studentId"]}",
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}