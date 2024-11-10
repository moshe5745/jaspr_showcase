import 'package:jaspr/jaspr.dart';

class Loader extends StatefulComponent {
  const Loader({super.key});

  State createState() => LoaderState();
}

class LoaderState extends State<Loader> {
  @sync
  bool myVar = true;

  @override
  void initState() {
    if(kIsWeb) {
      print("SDSDDSSD");
    }
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () => setState(() => myVar = false),
    );
  }

  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      p([text('Hello World: $myVar')]),
      button([text("click!!!")], onClick: () => setState(() => myVar = false))
    ]);
  }
}
