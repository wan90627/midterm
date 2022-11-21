import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];
  int _previousIndex=0;
  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('C108151146 鄭郁全'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: '自我介紹',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.business),
              label: '讀書計畫',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: '專案方向',
            ),
          ],
     onTap: (index) { setState(() {
    _previousIndex=_currentindex;
    _currentindex=index;
    if (index==0) {
    if (_previousIndex == _currentindex) player.resume();
    player.play(AssetSource("b1.mp3"));
    };
    if (index==1) {
    if (_previousIndex == _currentindex) player.resume();
    player.play(AssetSource("b2.mp3"));
    };
    if (index==2) {
    if (_previousIndex == _currentindex) player.resume();
    player.play(AssetSource("b3.mp3"));
    };
    if (index==3) {
    if (_previousIndex == _currentindex) player.resume();
    player.play(AssetSource("b4.mp3"));
    };
    {
    player.stop();
    }
    }
    );
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我叫鄭郁全，來自新北板橋，媽媽台東人、爸爸宜蘭人，有兩個姊姊一個是設計師、一個是護理師，而我未來應該會變成工程師。興趣是看棒球聽音樂，以前沒事就會去棒球場待著或是喜歡往外跑，但今年還沒有機會去看目前正在當考研戰士，目標是四中四大的通訊相關系所。';

  @override
  Widget build(BuildContext context) {

    player.play(AssetSource("Free_Test_Data_1MB_MP3.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("自我介紹",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.grey,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 20,color: Colors.grey.shade200),),
          ),

          //放一張照片
          Container(
            color: Colors.white,
            child: Image.asset('images/a1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  final String s2='從小一路到國中升高職選擇電子科，現在想想其實蠻後悔當初選擇技職體系，而沒有往普通高中就讀，在台灣現今的社會尤其是進入職場階段升學面試階段，其實還是有對技職體系科大的學生還是有種種迷思，這也是我後悔的一個點。不過也不是沒有機會翻身，趁著這波考研如果真的進入到名校充實的唸完兩年拿到學位，我相信也會比現在有更好的條件和機會進入一線大廠。';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("學習歷程",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.greenAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s2,
              style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  final String s3='碩一先按照自己的研究室老師的研究方向，想走無線通訊、數位信號處理、或是錯誤更正碼修相關的課程，一週讀懂一篇論文，多爭取相關研究計畫，碩一暑假如果有時間的話想去實習看看，但一般好像都沒有什麼時間。目前規劃是這樣碩二就是弄論文，目標兩年準時畢業。';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("讀書計畫",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.orangeAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s3,
              style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  final String s4='希望可以做出記錄自己到過了哪裡的APP，並可以於畫面中顯示一張台灣地圖，將到過的地方以不同顏色顯示。';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("專案方向",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.cyanAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s4,
              style: TextStyle(fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
