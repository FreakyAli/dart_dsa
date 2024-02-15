class BinarySearch {
  bool search(List<int> hayStack, int needle) {
    var searchResult = false;
    int low = 0, high = hayStack.length;
    do {
      var m = floor(low, high);
      var v = hayStack[m];

      if (v == needle) {
        searchResult = true;
        break;
      } else if (v > needle) {
        high = m;
      } else {
        low = m + 1;
      }
    } while (low < high);
    return searchResult;
  }

// easiest way to get the median
  int floor(int low, int high) {
    var value = low + ((high - low) / 2);
    return value.floor();
  }
}
