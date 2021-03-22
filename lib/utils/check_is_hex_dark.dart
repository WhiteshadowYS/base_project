// example 1: '8a5551' returns true
// example 2: 'd4918c' returns false
bool checkIsHexDark(String hex) {
  const List<String> darkHexNumerals = [
    '0', '1', '2', '3', '4', '5', '6' , '7',
  ];

  final List<String> splitedHex = hex.split('');

  if (splitedHex.length > 6) {
    splitedHex.removeRange(0, splitedHex.length - 6);
  }

  final int spCount = splitedHex.length;
  int darkCount = 0;

  for (String sp in splitedHex) {
    if (darkHexNumerals.contains(sp)) {
      darkCount++;
    }
  }

  if (darkCount >= spCount / 3 * 2) {
    return true;
  }

  return false;
}