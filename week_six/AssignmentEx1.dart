void main() {
  List<int> numbers = [1, 2, 3, 5, 6, 7, 8, 10, 11, 12];

  List<int> longestSubsequence = [];
  List<int> currentSubsequence = [];

  for (int n in numbers) {
    if (currentSubsequence.isEmpty || n == currentSubsequence.last + 1) {
      currentSubsequence.add(n);
    } else {
      if (currentSubsequence.length > longestSubsequence.length) {
        longestSubsequence = List.from(currentSubsequence);
      }
      currentSubsequence = [n];
    }
  }
  if (currentSubsequence.length > longestSubsequence.length) {
    longestSubsequence = List.from(currentSubsequence);
  }
  print("Longest subsequence of consecutive numbers: $longestSubsequence");
}
