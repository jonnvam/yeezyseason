import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/quiz_sets_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'floatingActionButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 900.0.ms,
            duration: 1200.0.ms,
            begin: 0.0,
            end: 2.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF1F232A),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed('CreateQuizSet');
          },
          backgroundColor: const Color(0x1AFFFFFF),
          elevation: 8.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ).animateOnPageLoad(
            animationsMap['floatingActionButtonOnPageLoadAnimation']!),
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.2,
                decoration: BoxDecoration(
                  color: const Color(0xFF1B2026),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80.0,
                        height: 80.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/user-svgrepo-com.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(height: 4.0))
                        .around(const SizedBox(height: 4.0)),
                  ),
                ),
              ),
              Container(
                width: 333.0,
                height: 45.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).error,
                      FlutterFlowTheme.of(context).accent1
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(-1.0, 0.0),
                    end: const AlignmentDirectional(1.0, 0),
                  ),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.workspace_premium_outlined,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  title: Text(
                    'Get premium benefits',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 20.0,
                  ),
                  tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                  dense: false,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.65,
                decoration: const BoxDecoration(
                  color: Color(0xFF1B2026),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: const Color(0x004B39EF),
                      borderRadius: 0.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: const Color(0xFF1B2026),
                      icon: Icon(
                        Icons.book,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        setState(() {});
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        context.pushNamed('Planet');
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0x004B39EF),
                      borderRadius: 0.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: const Color(0xFF1B2026),
                      icon: Icon(
                        Icons.support_agent_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        setState(() {});
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0x004B39EF),
                      borderRadius: 0.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: const Color(0xFF1B2026),
                      icon: Icon(
                        Icons.chat_bubble_outline_sharp,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        setState(() {});
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0x004B39EF),
                      borderRadius: 0.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: const Color(0xFF1B2026),
                      icon: Icon(
                        Icons.settings_outlined,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        setState(() {});
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                    FlutterFlowIconButton(
                      borderColor: const Color(0x004B39EF),
                      borderRadius: 0.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      fillColor: const Color(0xFF1B2026),
                      icon: Icon(
                        Icons.help,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        setState(() {});
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.15,
                decoration: const BoxDecoration(
                  color: Color(0xFF1B2026),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('Splash');
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.logout_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 25.0,
                      ),
                      title: Text(
                        'Log Out',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      tileColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dense: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0x1AFFFFFF),
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).secondary),
          automaticallyImplyLeading: false,
          leading: Opacity(
            opacity: 0.5,
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: const Color(0xFF1B2026),
              icon: Icon(
                Icons.menu_rounded,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 24.0,
              ),
              onPressed: () async {
                // Open Drawer
                scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Outfit',
                  color: const Color(0xFF9EA6AB),
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Mis temas',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('CreateQuizSet');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Mostrar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: StreamBuilder<List<QuizSetRecord>>(
                    stream: queryQuizSetRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<QuizSetRecord> listViewQuizSetRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewQuizSetRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewQuizSetRecord =
                              listViewQuizSetRecordList[listViewIndex];
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'QuizPage',
                                    queryParameters: {
                                      'quizSetRef': serializeParam(
                                        listViewQuizSetRecord.reference,
                                        ParamType.DocumentReference,
                                      ),
                                      'quizDuration': serializeParam(
                                        listViewQuizSetRecord.duration,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                  );

                                  FFAppState().update(() {
                                    FFAppState().score = 0;
                                  });
                                },
                                child: QuizSetsWidget(
                                  key: Key(
                                      'Key4lr_${listViewIndex}_of_${listViewQuizSetRecordList.length}'),
                                  title: listViewQuizSetRecord.quizName,
                                  descripcion:
                                      listViewQuizSetRecord.description,
                                  totalsQuestions:
                                      listViewQuizSetRecord.totalQuestions,
                                  durationQ:
                                      listViewQuizSetRecord.duration / 60000,
                                  imageP: currentUserPhoto,
                                ),
                              ),
                            ),
                          );
                        },
                      ).animateOnPageLoad(
                          animationsMap['listViewOnPageLoadAnimation']!);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
