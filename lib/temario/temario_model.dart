import '/flutter_flow/flutter_flow_util.dart';
import 'temario_widget.dart' show TemarioWidget;
import 'package:flutter/material.dart';

class TemarioModel extends FlutterFlowModel<TemarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
