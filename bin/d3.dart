import 'clock_state_manage.dart';

void main(List<String> arguments) {
  var input = 'on 18 0,set,inc,set,inc,set,inc,inc,set';
  var commandList = input.split(',');
  var atList = commandList.first.split(' ');

  print('${atList[2]}');
  final ClockStateManage manage;
  if (atList[0] == 'on') {
    manage =
        ClockStateManage(hour: int.parse(atList[1]), min: int.parse(atList[2]));
  } else {
    manage = ClockStateManage(hour: 0, min: 0);
  }
  commandList.forEach((command) {
    if (command == 'set') {
      manage.set();
      print('set ${manage.state.hour} ${manage.state.min}');
      print('current ${manage.currentStateIndex}');
    } else if (command == 'inc') {
      manage.state.incTime();
      print('inc ${manage.state.hour} ${manage.state.min}');
      print('current ${manage.currentStateIndex}');
    }
  });

  print('Now, It is ${manage.state.hour}:${manage.state.min}');
}
