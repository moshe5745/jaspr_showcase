import 'package:jaspr_showcase/components/svg_icon.dart';
import 'package:jaspr/jaspr.dart';

typedef MenuItem = ({String text, String href, SvgIcon icon});

class NavBar extends StatelessComponent {
  const NavBar({required this.menu});

  final List<MenuItem> menu;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var menuComponents = menu.map(
      (item) => li([
        a(href: item.href, [item.icon, text(item.text)])
      ]),
    );

    yield div(classes: 'drawer', [
      input(
          classes: 'drawer-toggle',
          id: 'my-drawer-3',
          type: InputType.checkbox,
          []),
      div(classes: 'drawer-content flex flex-col', [
        div(classes: 'navbar bg-base-300 w-full', [
          div(classes: 'flex-none lg:hidden', [
            label(
                classes: 'btn btn-square btn-ghost',
                htmlFor: 'my-drawer-3',
                attributes: {
                  'aria-label': 'open sidebar'
                },
                [
                  svg(
                      classes: 'inline-block h-6 w-6 stroke-current',
                      viewBox: '0 0 24 24',
                      attributes: {
                        'fill': 'none',
                        'xmlns': 'http://www.w3.org/2000/svg'
                      },
                      [
                        path(
                            strokeWidth: '2',
                            d: 'M4 6h16M4 12h16M4 18h16',
                            attributes: {
                              'stroke-linecap': 'round',
                              'stroke-linejoin': 'round'
                            },
                            []),
                      ]),
                ]),
          ]),
          div(classes: 'mx-2 flex-1 px-2', [text('Navbar Title')]),
          div(classes: 'hidden flex-none lg:block', [
            ul(classes: 'menu menu-horizontal', [
              ...menuComponents
            ]),
          ]),
        ]),
        text(' xxx '),
      ]),
      div(classes: 'drawer-side', [
        label(
            classes: 'drawer-overlay',
            htmlFor: 'my-drawer-3',
            attributes: {'aria-label': 'close sidebar'},
            []),
        ul(classes: 'menu bg-base-200 min-h-full w-80 p-4', [
          ...menuComponents
        ]),
      ]),
    ]);
  }
}
