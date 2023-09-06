void main() {
  Map<String, int> programmingLanguages = {
    "Python": 1991,
    "Java": 1995,
    "C++": 1985,
    "JavaScript": 1995,
    "Ruby": 1995,
  };

  String oldestLanguage = "";
  int earliestReleaseDate = DateTime.now().year;
  programmingLanguages.forEach((language, releaseYear) {
    if (releaseYear < earliestReleaseDate) {
      earliestReleaseDate = releaseYear;
      oldestLanguage = language;
    }
  });
  print(
      "The oldest programming language is $oldestLanguage, released in $earliestReleaseDate");
}
