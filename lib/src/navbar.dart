import 'package:jaspr/jaspr.dart';
import 'package:zeit/components/bulma/navbar_brand.dart';
import 'package:zeit/components/bulma/navbar_menu.dart';

class NavBar extends StatelessComponent {
  const NavBar({this.brand, this.menu, super.key});

  final NavbarBrand? brand;
  final NavbarMenu? menu;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield nav(
      classes: 'navbar block',
      [
        if (brand != null) brand!,
        if (menu != null) menu!,
      ],
    );
  }
}
