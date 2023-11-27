import 'package:my_first_app/models/university_model.dart';

class Universitydatastore {
  static List<UniversityModel> AllUniversitydata() {
    var University = <UniversityModel>[];
    var uni1 = UniversityModel(
        Name: 'Iqra', Address: 'HaythAbad', Stringth: 4000, Rank: 5);
    var uni2 = UniversityModel(
        Name: 'RMI', Address: 'HayathAbad', Stringth: 3000, Rank: 6);
    var uni3 = UniversityModel(
        Name: 'Peshawar', Address: 'university road', Stringth: 10000, Rank: 1);
    var uni4 = UniversityModel(
        Name: 'brains', Address: 'HayathAbad', Stringth: 2000, Rank: 7);
    var uni5 = UniversityModel(
        Name: 'AWK', Address: 'Mardan', Stringth: 8000, Rank: 2);
    var uni6 =
        UniversityModel(Name: 'GIK', Address: 'Sawbi', Stringth: 6000, Rank: 3);
    var uni7 = UniversityModel(
        Name: 'AUP', Address: 'Forest Bazar', Stringth: 5000, Rank: 4);
    var uni8=UniversityModel(
        Name: 'City university', Address: 'dalazak road', Stringth: 4000, Rank: 8);
    var uni9=UniversityModel(
        Name: ' North west uni', Address: 'phase 6', Stringth: 3000, Rank: 9);
    var uni10=UniversityModel(Name: 'babul madina', Address: 'peshawar ', Stringth: 2000, Rank: 10);

    University.add(uni1);
    University.add(uni2);
    University.add(uni3);
    University.add(uni4);
    University.add(uni5);
    University.add(uni6);
    University.add(uni7);
    University.add(uni8);
    University.add(uni9);
    University.add(uni10);
    return University;
  }
}
