import 'package:jaspr/jaspr.dart';

class {{name.pascalCase()}} extends StatelessComponent {
  const {{name.pascalCase()}}({this.size});

  final int? size;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "icon-{{name.snakeCase()}}", [
      svg(
          [
            path([],
                d: "{{svg-d}}",
                attributes: {
                  'stroke-linecap': 'round',
                  'stroke-linejoin': 'round'
                }),
          ],
          classes: 'size-6',
          viewBox: '0 0 24 24',
          attributes: {
            'fill': 'none',
            'stroke-width': '1.5',
            'stroke': 'currentColor',
            'xmlns': 'http://www.w3.org/2000/svg'
          })
    ]
    );
  }
}
