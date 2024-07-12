import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 189, 0, 145)),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student("กมล จันบุตรดี", "643450063-8", "images/กมล จันบุตรดี.jpg", "About Kamon like read manga and watch anime", "kamon@example.com", "https://www.facebook.com/profile.php?id=100008572876637"),
      Student("ก้องภพ ตาดี", "643450321-2", "images/ก้องภพ ตาดี.jpg", "About Kongpop like to play snooker", "kongpop@example.com", "https://www.facebook.com/kongphop.tadee"),
      Student("เจษฏา พบสมัย", "643450323-8", "images/เจษฏา พบสมัย.jpg", "About Jettada likes drawing, drawing and reading books.", "jettada@example.com", "https://www.facebook.com/chetsada.phobsamai.9"),
      Student("ชาญณรงค์ แต่งเมือง", "643450069-6", "images/ชาญณรงค์ แต่งเมือง.jpg", "About Chanarong like to celebrate and eat with friends.", "chanarong@example.com", "https://www.facebook.com/jiab.channarong.10"),
      Student("ประสิทธิชัย จันทร์สม", "643450079-3", "images/ประสิทธิชัย จันทร์สม.jpg", "About Prasit like to celebrate with friends.", "prasit@example.com", "https://www.facebook.com/profile.php?id=100069065683019"),
      Student("ศรันย์ ซุ่นเส้ง", "643450086-6", "images/ศรันย์ ซุ่นเส้ง.jpg", "About like to make gay jokes and look gay.", "saran@example.com", "https://www.facebook.com/profile.php?id=100012787714925"),
      Student("สุธาดา เสนามงคล", "643450089-0", "images/สุธาดา เสนามงคล.jpg", "About Suthada like to organize parties to celebrate with friends.", "suthada@example.com", "https://www.facebook.com/hisuthada"),
      Student("นภัสสร ดวงจันทร์", "643450326-2", "images/นภัสสร ดวงจันทร์.jpg", "About Napatsorn like to celebrate with friends.", "napatsorn@example.com", "https://www.facebook.com/profile.php?id=100013366607167"),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return displayItem(context: context, student: datas[index]);
          }),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      data: student,
                    )));
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Row(children: [
            Hero(
              tag: student.studentid,
              child: Image(
                width: 100,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  student.studentid,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            )
          ])),
    );
  }
}
