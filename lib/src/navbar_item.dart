import 'package:jaspr/jaspr.dart';

class NavbarItem extends StatelessComponent {
  const NavbarItem({required this.child, this.href, super.key}) : items = null;

  const NavbarItem.dropdown(
      {required this.child, required this.items, super.key})
      : href = null;

  final Component child;
  final String? href;
  final List<Component>? items;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    if (items == null) {
      yield a(href: href ?? '', classes: 'navbar-item', [child]);
    } else {
      yield div(classes: 'navbar-item has-dropdown is-hoverable', [
        a(href: '', classes: 'navbar-link', [child]),
        div(classes: 'navbar-dropdown', items!),
      ]);
    }
  }
}
