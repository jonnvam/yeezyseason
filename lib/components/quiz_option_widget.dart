import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    super.key,
    this.questionNum,
    this.questionName,
    this.isTrue,
  });

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  State<QuizOptionWidget> createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (widget.isTrue!) {
          if (_model.isAnswered != null) {
            setState(() {
              _model.isAnswered = null;
            });
            setState(() {
              FFAppState().completedQuestion =
                  FFAppState().completedQuestion + -1;
            });
            setState(() {
              FFAppState().score = FFAppState().score + -1;
            });
          } else {
            setState(() {
              _model.isAnswered = true;
            });
            setState(() {
              FFAppState().completedQuestion =
                  FFAppState().completedQuestion + 1;
            });
            setState(() {
              FFAppState().score = FFAppState().score + 1;
            });
          }
        } else {
          if (_model.isAnswered != null) {
            setState(() {
              _model.isAnswered = null;
            });
            setState(() {
              FFAppState().completedQuestion =
                  FFAppState().completedQuestion + -1;
            });
          } else {
            setState(() {
              _model.isAnswered = false;
            });
            setState(() {
              FFAppState().completedQuestion =
                  FFAppState().completedQuestion + 1;
            });
          }
        }
      },
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            () {
              if (_model.isAnswered == true) {
                return const Color(0x331900FF);
              } else if (_model.isAnswered == false) {
                return const Color(0x34FF0000);
              } else {
                return FlutterFlowTheme.of(context).secondaryBackground;
              }
            }(),
            Colors.transparent,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          border: Border.all(
            color: valueOrDefault<Color>(
              () {
                if (_model.isAnswered == true) {
                  return const Color(0xFF1900FF);
                } else if (_model.isAnswered == false) {
                  return const Color(0xFFFF0000);
                } else {
                  return FlutterFlowTheme.of(context).primaryText;
                }
              }(),
              Colors.white,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    () {
                      if (_model.isAnswered == true) {
                        return const Color(0xFF1900FF);
                      } else if (_model.isAnswered == false) {
                        return const Color(0xFFFF0000);
                      } else {
                        return Colors.transparent;
                      }
                    }(),
                    Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      () {
                        if (_model.isAnswered == true) {
                          return const Color(0xFF1900FF);
                        } else if (_model.isAnswered == false) {
                          return const Color(0xFFFF0000);
                        } else {
                          return Colors.white;
                        }
                      }(),
                      Colors.white,
                    ),
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.questionNum,
                      '?',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.questionName,
                    'Escribe la pregunta',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
