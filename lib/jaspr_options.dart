// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_showcase/pages/about.dart' as prefix0;
import 'package:jaspr_showcase/pages/home.dart' as prefix1;
import 'package:jaspr_showcase/app.dart' as prefix2;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix0.About: ClientTarget<prefix0.About>('pages/about'),
    prefix1.Home: ClientTarget<prefix1.Home>('pages/home'),
  },
  styles: () => [
    ...prefix0.About.styles,
    ...prefix2.App.styles,
  ],
);
