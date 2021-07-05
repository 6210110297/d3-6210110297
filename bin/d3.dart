void main(List<String> arguments) {
  var input = 'on 18 0,set,inc,set,inc,set,inc,inc,set';
  var commandList = input.split(',');
  commandList.forEach((command) {
    var atList = command.split(' ');
    if (atList.length == 0) {}
  });
}
