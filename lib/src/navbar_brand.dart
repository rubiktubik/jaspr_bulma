import 'package:jaspr/jaspr.dart';

class NavbarBrand extends StatelessComponent {
  const NavbarBrand({required this.children, super.key});

  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'navbar-brand', children);
  }
}
