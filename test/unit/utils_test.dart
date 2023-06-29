import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_clone_app/utility/utils.dart';

void main() {
  group("utils test", () {
    test("removeTrailingZerosAndNumberfy", () {
      expect(Utils.removeTrailingZerosAndNumberfy("203.450"), 203.45);
      expect(Utils.removeTrailingZerosAndNumberfy("50.0"), 50);
      expect(Utils.removeTrailingZerosAndNumberfy("50"), 50);
    });
    test("toMillionString", () {
      expect(9500000.toMillionString(), "9.5");
      expect(9000000.toMillionString(), "9");
      expect(10000000.toMillionString(), "10");
      expect(11114952.toMillionString(), "11.11");
    });
  });
}
