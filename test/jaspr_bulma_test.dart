import 'package:jaspr_bulma/jaspr_bulma.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  group('navbar', () {
    testComponents('should render navbarbrand', (tester) async {
      tester.pumpComponent(NavbarBrand(children: []));

      expect(find.tag('div'), findsOneComponent);
    });
  });
}
