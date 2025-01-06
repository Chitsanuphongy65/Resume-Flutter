import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50, // ขนาดรูปภาพ
                        backgroundImage: NetworkImage('https://scontent-bkk1-1.cdninstagram.com/v/t51.2885-19/467122595_884890026746240_6716217790093790736_n.jpg?stp=dst-jpg_s150x150_tt6&_nc_ht=scontent-bkk1-1.cdninstagram.com&_nc_cat=108&_nc_ohc=sycGf3GqC_8Q7kNvgFiBzzs&_nc_gid=01d1b191c97f4ec8a52076766ea0093b&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AYATtsjvimYj0aRmw5ImFDRdXTXJKeiiREum3S6KzljPUg&oe=676EFD00&_nc_sid=8b3546'), // เปลี่ยน "me.jpg" เป็นรูปของคุณ
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Chitsanuphong Yenyueak (Owen)",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                Text(
                  "About Me",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hobby: Watch Movie"),
                        Text("Favorite Food: Noodle, Shabu, Sea food"),
                        Text("Hometown: Sukhothai"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Divider(),
                Text(
                  "Education",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Column(
                  children: [
                    buildEducationTile("Elementary: Ban Mae Trun School", "Year: 2556"),
                    buildEducationTile("Primary: Maungchaliang School", "Year: 2559"),
                    buildEducationTile("High School: Maungchaliang School", "Year: 2564"),
                    buildEducationTile("Undergrad: Naresuan University", "Year: 2568"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildEducationTile(String title, String subtitle) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(Icons.school, color: Colors.blue),
      ),
    );
  }
}
