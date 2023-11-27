class CountryModel{
  String name;
  String? capital;
  String region;
  int population;
  double? area;
  List<dynamic>? borders;
  String flag;



  CountryModel({
    required this.name,
     this.capital,
    required this.region,
    required this.population,
     this.area,
     this.borders,
    required this.flag,
  });
  static CountryModel fromJSON(Map<String,dynamic>map){
    return CountryModel(
        name:map['name'],
        capital:map ['capital'],
        region: map ['region'],
        population:map['population'],
        area:map ['area'],
        borders:map['borders'],
        flag:map ['flag'],
    );
  }
}