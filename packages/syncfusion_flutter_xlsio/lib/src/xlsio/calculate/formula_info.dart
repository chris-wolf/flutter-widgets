part of xlsio;

/// FormulaInfo maintains information on a single formula object.
class FormulaInfo {
  String _formulaValue;
  String _parsedFormula;
  // ignore: prefer_final_fields
  int _calcID = -2147483648 + 1;
}

/// RangeInfo represents a rectangle array of cells that may contain formulas, strings, or numbers
/// that may be referenced by other formulas.
class RangeInfo {
  /// GetAlphaLabel is a method that retrieves a String value for the column whose numerical index is passed in.
  static String getAlphaLabel(int col) {
    final List<String> cols = List<String>(10);
    int n = 0;
    while (col > 0 && n < 9) {
      col--;
      cols[n] = String.fromCharCode((col % 26) + 'A'.codeUnitAt(0));
      col = col ~/ 26;
      n++;
    }

    final List<String> chs = List<String>(n);
    for (int i = 0; i < n; i++) {
      chs[n - i - 1] = cols[i];
    }

    return chs.join();
  }
}
