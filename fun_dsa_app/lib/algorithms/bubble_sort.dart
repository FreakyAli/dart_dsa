class BubbleSort {
  List<int> sort(List<int> arr) {
    final n = arr.length;
    for (var i = 0; i < n; ++i) {
      for (var j = 0; j < ((n - 1) - i); ++j) {
        if (arr[j] > arr[j + 1]) {
          final temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
    return arr;
  }
}
