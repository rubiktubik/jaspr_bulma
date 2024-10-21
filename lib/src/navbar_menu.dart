import 'package:jaspr/jaspr.dart';

class NavbarMenu extends StatelessComponent {
  const NavbarMenu(
      {this.isActive = false,
      required this.items,
      this.endItems = const [],
      super.key});

  final bool isActive;
  final List<Component> items;
  final List<Component> endItems;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'navbar-menu${isActive ? ' is-active' : ''}', [
      div(classes: 'navbar-start', items),
      div(classes: 'navbar-end', endItems),
    ]);
  }
}
