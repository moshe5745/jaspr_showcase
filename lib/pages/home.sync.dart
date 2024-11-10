// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_showcase/pages/home.dart' as prefix0;

mixin HomeStateSyncMixin on State<prefix0.Home> implements SyncStateMixin<prefix0.Home, Map<String, dynamic>> {
  bool get isLoading;
  set isLoading(bool isLoading);

  @override
  void updateState(Map<String, dynamic> value) {
    isLoading = value['isLoading'];
  }

  @override
  Map<String, dynamic> getState() {
    return {
      'isLoading': isLoading,
    };
  }

  @override
  void initState() {
    super.initState();
    SyncStateMixin.initSyncState(this);
  }
}
