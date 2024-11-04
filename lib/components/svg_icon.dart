import 'package:jaspr/jaspr.dart';

class SvgIcon extends StatelessComponent {
  final String d;
  final String color;

  const SvgIcon(this.d, {super.key, this.color = ''});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield svg(classes: 'size-6 $color', viewBox: '0 0 24 24', attributes: {
      'fill': 'none',
      'stroke-width': '1.5',
      'stroke': 'currentColor',
      'xmlns': 'http://www.w3.org/2000/svg'
    }, [
      path(
          d: d,
          attributes: {'stroke-linecap': 'round', 'stroke-linejoin': 'round'},
          []),
    ]);
  }
}
