import 'dart:math';

class CrystalBallSearch {
  int search(List<bool> breaks) {
    int jmpAmount = sqrtFloor(breaks.length);
    for (var i = jmpAmount; i < breaks.length; i++) {
      if (breaks[i]) {
        return i;
      }
      i -= jmpAmount;
      for (var j = 0; j <= jmpAmount && i < breaks.length; j++, i++) {
        if (breaks[i]) {
          return i;
        }
      }
    }
    return -1;
  }

  int sqrtFloor(int value) {
    var sqrtVal = sqrt(value);
    return sqrtVal.floor();
  }
}
