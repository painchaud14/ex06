library ex06;

part 'ex06_variables.dart';

main() {
//Question 1
  print('NUMÉRO 1');


  ex6_01(var palindromeounon) {
    for (var i = 0; i < palindromeounon.length / 2; i++) {
      if (palindromeounon[i] ==
          palindromeounon[palindromeounon.length - (1 + i)]) {

        print('${palindromeounon} est un palindrome');
        return;
      }
    }
    print('${palindromeounon} nest pas un palindrome');
  }

  for (var x = 0; x <= 4; x++) {
    ex6_01(liste1[x]);
  }

  // Question 2
  ex6_02(var moment1, moment2) {
    print('NUMÉRO 2');
  }
  Duration difference = moment1.difference(moment2);

  print(
      'Le nombre de jours entre ces deux dates est de ${difference.inDays} jours');


// Question 3
  print('NUMÉRO 3');
  ex6_3(var result) {

    var cote = '';
    if (100 >= result && result >= 95) {
      cote += 'A+';
    } else if (95 >= result && result >= 90) {
      cote += 'A';
    } else if (90 >= result && result >= 85) {
      cote += 'A-';
    } else if (85 >= result && result >= 80) {
      cote += 'B+';
    } else if (80 >= result && result >= 75) {
      cote += 'B';
    } else if (75 >= result && result >= 70) {
      cote += 'B-';
    } else if (70 >= result && result >= 65) {
      cote += 'C+';
    } else if (65 >= result && result >= 60) {
      cote += 'C';
    } else if (60 >= result && result >= 55) {
      cote += 'C-';
    } else if (55 >= result && result >= 0) cote += 'E';
    print('La note ${result}% en lettre est ${cote}');
  }
  for (var x = 0; x <= 9; x++) {

    ex6_3(note[x]);
  }

//Question 4
  ex6_4(list) {
    print('NUMÉRO 4');
    var plus8 = [];
    var mot8 = [];
    var moins8 = [];

    for (var y in list) {
      if (y.length < 8) {
        moins8.add(y);
      } else if (y.length == 8) {
        mot8.add(y);
      } else {
        plus8.add(y);
      }
    }
    print('Les mots ayant 8 lettres: $mot8');
    print('Les mots ayant moins de 8 lettres: $moins8');
    print('Les mots ayant plus de 8 lettres : $plus8');
  }


  ex6_4(liste);

//Question 5
  print('QUESTION 5');

  var teams = new List();
  var players = new List();

  for (var t in liste2.values) {
    if (!teams.contains(t)) {
      teams.add(t);
      players.add(new List());
    }
  }


  for (var joueur in liste2.keys) {
    var pos = teams.indexOf(liste2[joueur]);
    players.elementAt(pos).add(joueur);
  }



  print('Voici les joueurs regroupé par leur équipes: $players');
}





