class ScheduleModel{
  String data;
  String teamOne;
  String teamTwo;
  String flagOne;
  String flagTwo;
  String group;
  String venue;
  String time;

  ScheduleModel({
    required   this.data,
    required    this.teamOne,
    required   this.teamTwo,
    required   this.flagOne,
    required    this.flagTwo,
    required   this.group,
    required  this.venue,
    required this.time});
  static ScheduleModel fromJSON(Map<String,dynamic>map){
    return ScheduleModel(
      data: map['date'],
      teamOne: map['teamOne'],
      teamTwo:map['teamTwo'] ,
      flagOne: map['flagOne'],
      flagTwo: map['flagTwo'],
      group: map['group'],
      venue: map['venue'],
      time: map['time'],
    );
  }
}