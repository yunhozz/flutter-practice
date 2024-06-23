import 'package:flutter/material.dart';

// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 상단 레이아웃
        appBar: AppBar(
          title: Text('MyApp'),
          centerTitle: false,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.star),
          actions: const [ // 우측 아이콘
            Icon(Icons.face),
            Icon(Icons.score)
          ],
        ),
        // 중단 레이아웃
        body: Align(
          alignment: Alignment.center,
          child: Column( // Column : 세로 배치, Row : 가로 배치
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 정축 정렬
            crossAxisAlignment: CrossAxisAlignment.center, // 반대축 정렬
            children: [
              Text(
                'contact practice',
                style: TextStyle(fontSize: 30, letterSpacing: 5, fontWeight: FontWeight.w700),
              ),
              Icon(Icons.star, size: 30),
              Image(image: AssetImage('assets/test_image.jpeg')),
              Center(
                child: Container(
                  width: 100,
                  height: 50,
                  // color: Colors.blue,
                  margin: EdgeInsets.all(20), // 바깥쪽 여백
                  padding: EdgeInsets.fromLTRB(1, 2, 3, 4), // 안쪽 여백
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextButton( // TextButton, IconButton, ElevatedButton
                    onPressed: (){},
                    style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.transparent)),
                    child: Text('test'),
                  ),
                ),
              ),
            ],
          ),
        ),
        // 하단 레이아웃
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
