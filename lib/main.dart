import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text("Sliver App Bar"),
            floating: true,
            snap: true,//一往下來就出現
            expandedHeight: 300,
            stretch: true,//允許向下拉伸
            flexibleSpace: FlexibleSpaceBar(
              background: FlutterLogo(),
              title: Text("FlexibleSpaceBar Title"),
              collapseMode: CollapseMode.parallax,
              stretchModes: [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
                StretchMode.fadeTitle,
              ],
            ),
            // pinned: true,//一直顯示 bar
          ),
          SliverToBoxAdapter(
            child: Placeholder(),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              FlutterLogo(),
              FlutterLogo(size: 200,),
              FlutterLogo(size: 200,),
              FlutterLogo(size: 200,),
              FlutterLogo(size: 200,),
            ],
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
