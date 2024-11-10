// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_showcase/components/loader.dart' as prefix0;

mixin LoaderStateSyncMixin on State<prefix0.Loader> implements SyncStateMixin<prefix0.Loader, Map<String, dynamic>> {
  bool get myVar;
  set myVar(bool myVar);

  @override
  void updateState(Map<String, dynamic> value) {
    myVar = value['myVar'];
  }

  @override
  Map<String, dynamic> getState() {
    return {
      'myVar': myVar,
    };
  }

  @override
  void initState() {
    super.initState();
    SyncStateMixin.initSyncState(this);
  }
}
