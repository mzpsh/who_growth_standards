import 'package:flutter_test/flutter_test.dart';
import 'package:who_growth_standards/who_growth_standards.dart';

void main() {
  group('getHeadAgeIndex', () {
    test('should throw RangeError if age is is out of 0-60 range', () {
      expect(
        () => WhoGrowthStandards.getHeadAgeIndex(-1, 1),
        throwsA(isA<RangeError>()),
      );
    });
    test('should return correct boy values', () {
      final high = WhoGrowthStandards.getHeadAgeIndex(0, 37.1);
      final median = WhoGrowthStandards.getHeadAgeIndex(0, 34.6);
      final low = WhoGrowthStandards.getHeadAgeIndex(0, 32.0);
      expect(true, high == 2.0);
      expect(true, median == 0.0);
      expect(true, low == -2.0);
    });

    test('should return correct girl values', () {
      final high = WhoGrowthStandards.getHeadAgeIndex(0, 36.3, isFemale: true);
      final median =
          WhoGrowthStandards.getHeadAgeIndex(0, 34.0, isFemale: true);
      final low = WhoGrowthStandards.getHeadAgeIndex(0, 31.6, isFemale: true);

      expect(true, high == 2.0);
      expect(true, median == 0.0);
      expect(true, low == -2.0);
      // });
    });

    group('getArmAgeIndex', () {
      test('should throw RangeError if age is is out of 0-60 range', () {
        expect(
          () => WhoGrowthStandards.getArmAgeIndex(-1, 1),
          throwsA(isA<RangeError>()),
        );
      });
      test('should return correct boy values', () {
        final high = WhoGrowthStandards.getArmAgeIndex(3, 15.6);
        final median = WhoGrowthStandards.getArmAgeIndex(3, 13.5);
        final low = WhoGrowthStandards.getArmAgeIndex(3, 11.6);

        expect(true, high == 2.0);
        expect(true, median == 0.0);
        expect(true, low == -2.0);
      });

      test('should return correct girl values', () {
        final high = WhoGrowthStandards.getArmAgeIndex(3, 15.7, isFemale: true);
        final median =
            WhoGrowthStandards.getArmAgeIndex(3, 13.4, isFemale: true);
        final low = WhoGrowthStandards.getArmAgeIndex(3, 11.6, isFemale: true);

        expect(true, high == 2.0);
        expect(true, median == 0.0);
        expect(true, low == -2.0);
      });
    });
  });
}
