import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  final _isHours = true;

  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stopwatch',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
                stream: _stopWatchTimer.rawTime,
                initialData: _stopWatchTimer.rawTime.value,
                builder: (context, snapshot) {
                  final value = snapshot.data;
                  final displayTime =
                      StopWatchTimer.getDisplayTime(value, hours: _isHours);
                  return Text(
                    displayTime,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  );
                }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: Text('Mulai'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                    ),
                    onPressed: () {
                      setState(() {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      'Jeda',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 315,
              child: ElevatedButton(
                child: Text('Reset'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  setState(() {
                    _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
