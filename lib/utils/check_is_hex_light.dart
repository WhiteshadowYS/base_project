bool checkIsHexLight(String hex) {
  const List<String> lightHexNumerals = [
    '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
  ];

  final List<String> splitedHex = hex.split('');

  final int spCount = splitedHex.length;
  int lightCount = 0;

  for (String sp in splitedHex) {
    if (lightHexNumerals.contains(sp)) {
      lightCount++;
    }
  }

  if (lightCount >= spCount / 3 * 2) {
    return true;
  }

  return false;
}