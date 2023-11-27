class TeamsModel{
  String fullName;

  String flag;

  TeamsModel({
    required  this.fullName,
    required  this.flag});
  static TeamsModel formJSON(Map<String,dynamic>map){
    return TeamsModel(
        fullName:map[' fullName'],
        flag:map['flag']);
  }
}