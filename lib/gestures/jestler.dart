import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

// void main() {
//   runApp(MyApp());
// }
class Jestler extends StatefulWidget {
  @override
  _JestlerState createState() => _JestlerState();
}

class _JestlerState extends State<Jestler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Jestler'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: new GestureDetector(
                    child: new Text('Tek tıkla'),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          new SnackBar(content: new Text('Tek tıkladın')));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  child: new GestureDetector(
                    child: new Text('Çift tıkla'),
                    onDoubleTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          new SnackBar(content: new Text('Çift tıkladın')));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: new GestureDetector(
                    child: new Text('Tıklama bittiği an tetiklenecek'),
                    onTapUp: (e) {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content:
                              new Text(e.toString() + ' onTapUp tetiklendi')));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: new GestureDetector(
                    child: new Text('Tıklama başladığı an tetiklenecek'),
                    onTapDown: (e) {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text(
                              e.toString() + ' onTapDown tetiklendi')));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: new GestureDetector(
                    child: new Text('Tıklar gibi yap vazgeç'),
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Tıklar gibi yaptın vazgeçtin')));
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.red,
                  child: new GestureDetector(
                    child: new Text('Uzun bas'),
                    onLongPress: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          new SnackBar(content: new Text('Uzun bastın')));
                    },
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0), child: Hareketli()),
            ],
          ),
        ),
      ),
    );
  }
}

class Hareketli extends StatefulWidget {
  @override
  _HareketliState createState() => _HareketliState();
}

class _HareketliState extends State<Hareketli> {
  String dragDirection = '';
  String startDXPoint = '';
  String startDYPoint = '';
  String velocity = '';
  String distance = '';

  /// Track starting point of a horizontal gesture
  void _onHorizontalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection = "YATAY";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  /// Track starting point of a vertical gesture
  void _onVerticalDragStartHandler(DragStartDetails details) {
    setState(() {
      this.dragDirection = "DİKEY";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  /// Track current point of a gesture
  void _onDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "GEZİNİYOR";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  /// Track current point of a gesture
  void _onHorizontalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "YATAY GEZİNİYOR";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  /// Track current point of a gesture
  void _onVerticalDragUpdateHandler(DragUpdateDetails details) {
    setState(() {
      this.dragDirection = "DİKEY GEZİNİYOR";
      this.startDXPoint = '${details.globalPosition.dx.floorToDouble()}';
      this.startDYPoint = '${details.globalPosition.dy.floorToDouble()}';
    });
  }

  /// What should be done at the end of the gesture ?
  void _onDragEnd(DragEndDetails details) {
    double result = details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
    setState(() {
      this.velocity = '$result';
    });
  }

  void _onScaleUpdateHandler(ScaleUpdateDetails details) {
    double deg = details.rotation.abs() * (180 / math.pi);
    setState(() {
      this.distance = '${deg.toStringAsFixed(1)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      dragStartBehavior: DragStartBehavior.start,

      //onHorizontalDragStart: _onHorizontalDragStartHandler,
      onVerticalDragStart: _onVerticalDragStartHandler,

      //onHorizontalDragUpdate: _onDragUpdateHandler,
      //onVerticalDragUpdate: _onDragUpdateHandler,

      //onHorizontalDragUpdate: _onHorizontalDragUpdateHandler,
      onVerticalDragUpdate: _onVerticalDragUpdateHandler,

      //onHorizontalDragEnd: _onDragEnd,
      onVerticalDragEnd: _onDragEnd,

      onScaleUpdate: _onScaleUpdateHandler,

      behavior: HitTestBehavior.translucent,
      child: Container(
        color: Colors.amberAccent,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.dragDirection,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Start DX point: ${this.startDXPoint}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Start DY point: ${this.startDYPoint}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Sürükleme Bitiş Değeri: ${this.velocity}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(
              'Uzaklık: ${this.distance}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
