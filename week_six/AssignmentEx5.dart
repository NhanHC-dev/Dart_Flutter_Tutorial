String longestCommonSubsequence(List<String> strings) {
  if (strings.isEmpty) return '';

  final firstString = strings[0];
  String longestCommon = '';
  for (int i = 0; i < firstString.length; i++) {
    for (int j = i + longestCommon.length + 1; j <= firstString.length; j++) {
      final substring = firstString.substring(i, j);
      if (strings.every((str) => str.contains(substring))) {
        longestCommon = substring;
      }
    }
  }
  return longestCommon;
}

void main() {
  List<String> strings = ["abcde", "ace", "abc", "def"];
  String result = longestCommonSubsequence(strings);
  print("Longest Common Subsequence: $result");
}
