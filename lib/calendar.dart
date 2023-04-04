import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  String _currentDate = '';
  String _currentTime = '';
  String _zone = 'WIB';

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    var now = DateTime.now().toUtc();
    switch(_zone) {
      case 'WIB':
        now = now.add(Duration(hours: 7));
        break;
      case 'WITA':
        now = now.add(Duration(hours: 8));
        break;
      case 'WIT':
        now = now.add(Duration(hours: 9));
        break;
      default:
        break;
    }
    var formatterDate = DateFormat('EEEE, dd MMMM yyyy');
    var formatter = DateFormat('HH:mm:ss');
    setState(() {
      _currentDate = formatterDate.format(now);
      _currentTime = formatter.format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              '$_currentDate',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$_currentTime',
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WIB';
                    });
                    _updateTime();
                  },
                  child: Text('WIB'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 60),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins-SemiBold'
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WIT';
                    });
                    _updateTime();
                  },
                  child: Text('WIT'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 60),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins-SemiBold'
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _zone = 'WITA';
                    });
                    _updateTime();
                  },
                  child: Text('WITA'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 60),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins-SemiBold'
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}