import 'package:lotto_betting_online/models/game_model.dart';

List<int> getNumbersbyCount(int start, int end) {
  List<int> numbers = [];

  for (int i = start; i <= end; i++) {
    numbers.add(i);
  }

  return numbers;
}

List<GameData> gameList = [
  GameData(
      gameText: '2D Lotto',
      image: '2dLotto.png',
      setCount: 2,
      numbers: getNumbersbyCount(1, 31)),
  GameData(
      gameText: '3D Lotto',
      image: '3dLotto.png',
      setCount: 3,
      numbers: getNumbersbyCount(0, 9)),
  GameData(
      gameText: '4D Lotto',
      image: '4dLotto.png',
      setCount: 4,
      numbers: getNumbersbyCount(0, 9)),
  GameData(
      gameText: '6D Lotto',
      image: '6dLotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(0, 9)),
  GameData(
      gameText: 'Lotto 6/42',
      image: '642Lotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(1, 42)),
  GameData(
      gameText: 'Megga Lotto 6/45',
      image: '645Lotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(1, 45)),
  GameData(
      gameText: 'Super Lotto 6/49',
      image: '649Lotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(1, 49)),
  GameData(
      gameText: 'Grand Lotto 6/55',
      image: 'grandLotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(1, 55)),
  GameData(
      gameText: 'Ultra Lotto 6/58',
      image: 'ultraLotto.png',
      setCount: 6,
      numbers: getNumbersbyCount(1, 58)),
];
