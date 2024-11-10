import 'package:jaspr/jaspr.dart';
import 'package:jaspr_showcase/components/svg_icon.dart';
import 'package:jaspr_showcase/constants/icons.dart';

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
        div(classes: 'navbar bg-base-300 w-full min-h-20', [
          div(classes: 'flex-none lg:hidden', [
            label(
                classes: 'btn btn-square btn-ghost',
                htmlFor: 'my-drawer-3',
                attributes: {'aria-label': 'open sidebar'},
                [const SvgIcon(HeroIconData.bars_4)]),
          ]),
          div(classes: 'mx-2 flex-1 px-2', [text('Navbar Title')]),
          div(classes: 'hidden flex-none lg:block', [
            ul(classes: 'menu menu-horizontal', [...menuComponents]),
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
        ul(
            classes: "menu bg-base-200 min-h-full w-80 p-4",
            [...menuComponents]),
      ]),
    ]);

    var x = '''<div class=""></div>''';
  }
}
