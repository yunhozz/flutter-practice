import 'package:flutter/material.dart';

var myPicture = CircleAvatar(
  backgroundColor: Colors.transparent,
  radius: 200,
  child: ClipOval(
    child: Image.asset(
      'assets/test_image.jpeg',
      width: 300,
      height: 300,
      fit: BoxFit.fill,
    ),
  ),
);

class SubTitle extends StatelessWidget {
  final title;
  const SubTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(height: 3, fontSize: 30, fontWeight: FontWeight.w700),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          ],
          backgroundColor: Colors.redAccent,
        ),
        body: ListView(
          children: [
            myPicture,
            Container(
              height: 300,
              margin: EdgeInsets.all(10),
              color: Colors.red[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SubTitle(title: 'About Me'),
                  Text('내용 1'),
                  Text('내용 2'),
                  Text('내용 3'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 300,
                    margin: EdgeInsets.all(10),
                    color: Colors.blue[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SubTitle(title: 'Career'),
                        Text('내용 1'),
                        Text('내용 2'),
                        Text('내용 3'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    margin: EdgeInsets.all(10),
                    color: Colors.green[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SubTitle(title: 'Contact'),
                        Text('내용 1'),
                        Text('내용 2'),
                        Text('내용 3'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 500,
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SubTitle(title: 'Skills'),
                  Text('내용 1'),
                  Text('내용 2'),
                  Text('내용 3'),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.phone)),
                IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                IconButton(onPressed: (){}, icon: Icon(Icons.contact_page)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const Profile());
}
