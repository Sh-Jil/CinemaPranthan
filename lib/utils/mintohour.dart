String durationToString(int minutes) {
  var d = Duration(minutes: minutes);
  List<String> parts = d.toString().split(':');

  if (parts[0] == '0') {
    return "${parts[1].padLeft(2, '0')}m";
  }

  return '${parts[0].padLeft(2, '0')}h${parts[1].padLeft(2, '0')}m';
}
