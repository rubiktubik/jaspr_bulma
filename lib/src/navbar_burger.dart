import 'package:jaspr/jaspr.dart';

class NavbarBurger extends StatelessComponent {
  const NavbarBurger({required this.isActive, required this.onToggle});

  final bool isActive;
  final void Function() onToggle;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "navbar-burger${isActive ? ' is-active' : ''}",
      attributes: {"role": "button", "data-target": "navMenu"},
      events: events(onClick: () {
        onToggle();
      }),
      [
        span(attributes: {"aria-hidden": "true"}, []),
        span(attributes: {"aria-hidden": "true"}, []),
        span(attributes: {"aria-hidden": "true"}, []),
        span(attributes: {"aria-hidden": "true"}, []),
      ],
    );
  }
}
