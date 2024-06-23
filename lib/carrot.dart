import 'package:flutter/material.dart';

/// 각각의 위젯을 class로 재정의 할 수 있음.
/// 변수 형태로도 저장이 가능하나, 성능상의 이슈가 있을 수 있음.
/// 변하지 않는 UI(ex.아이콘, 사진 등)는 변수로 저장, 나머지는 함수로 표현.
/// 아무 위젯을 다 커스텀화 X, 재사용성이 높거나 큰 페이지들 위주로.
class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Image.asset('assets/test_image.jpeg')),
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('캐논 DSLR 100D (단렌즈, 충전기 16기가 SD 포함)'),
                Text('서대문구 현저동'),
                Text('12,000원'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                    Text('4'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Carrot extends StatelessWidget {
  const Carrot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: IconButton(
            onPressed: (){},
            icon: Icon(Icons.expand_more),
          ),
          leading: Text('금호동3가'),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.notifications),
            ),
          ],
        ),
        body: ListView( // 스크롤바 이용, 메모리 절약 기능
          children: const [
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
            ShopItem(),
          ],
        ),
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
  runApp(const Carrot());
}
