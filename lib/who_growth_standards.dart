library who_growth_standards;

import 'package:who_growth_standards/arm_circum_age_table.dart';

import 'head_circum_age_table.dart';

/// A Calculator.
class WhoGrowthStandards {
  /// [ageInMonth] is between 0 and 60 months.
  static double getHeadAgeIndex(int ageInMonth, double headCircumInCm,
      {bool isFemale = false}) {
    late double index;
    late List<double> ageRow;

    // Setting table for gender
    List table = boyHeadAgeTable;
    if (isFemale) {
      table = girlHeadAgeTable;
    }

    // Choosing correct row for age
    try {
      ageRow = table[ageInMonth];
    } catch (e) {
      rethrow;
    }

    // Calculate the z score
    index = _getCircumAgeIndex(ageRow, headCircumInCm);

    return index;
  }

  /// [ageInMonth] is between 3 and 60 months.
  static double getArmAgeIndex(int ageInMonth, double armCircumInCm,
      {bool isFemale = false}) {
    late double index;
    late List<double> ageRow;

    // 3 Month offset
    ageInMonth -= 3;

    // Setting table for gender
    List table = boyArmAgeTable;
    if (isFemale) {
      table = girlArmAgeTable;
    }

    // Choosing correct row for age
    try {
      ageRow = table[ageInMonth];
    } catch (e) {
      rethrow;
    }

    // Calculate the z score
    index = _getCircumAgeIndex(ageRow, armCircumInCm);

    return index;
  }

  static double _getCircumAgeIndex(List row, double inputCm) {
    late double index;
    // Calculate the age based on
    // -2, 0, and 2 z scores
    final median = row[1];
    if (inputCm == median) {
      index = 0;
    }
    if (inputCm > median) {
      final twoSD = (row[0] - median) / 2;
      index = (inputCm - median) / twoSD;
    } else {
      final oneSD = (median - row[2]) / 2;
      index = (inputCm - median) / oneSD;
    }

    return index;
  }
}
