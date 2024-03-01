import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'a_i_combination_card_model.dart';
export 'a_i_combination_card_model.dart';

class AICombinationCardWidget extends StatefulWidget {
  const AICombinationCardWidget({
    super.key,
    required this.automationTitle,
    this.paymentModel,
    this.thisAdvantages,
    this.thisDisadvantages,
    required this.aiToolOne,
    required this.aiToolTwo,
    this.aiToolThree,
  });

  final String? automationTitle;
  final String? paymentModel;
  final List<String>? thisAdvantages;
  final List<String>? thisDisadvantages;
  final AIToolStruct? aiToolOne;
  final AIToolStruct? aiToolTwo;
  final AIToolStruct? aiToolThree;

  @override
  State<AICombinationCardWidget> createState() =>
      _AICombinationCardWidgetState();
}

class _AICombinationCardWidgetState extends State<AICombinationCardWidget> {
  late AICombinationCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AICombinationCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 450,
      constraints: BoxConstraints(
        maxWidth: 570,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    valueOrDefault<String>(
                      widget.automationTitle,
                      'N/A',
                    ),
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Montserrat',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Container(
                  height: 30,
                  constraints: BoxConstraints(
                    minWidth: 100,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(7.5),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                      child: AutoSizeText(
                        valueOrDefault<String>(
                          widget.paymentModel,
                          'N/A',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 10)),
            ),
            Divider(
              height: 30,
              thickness: 1,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget.aiToolOne!.logo,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/error_image.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.aiToolOne?.name,
                                'N/A',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        alignment: AlignmentDirectional(0, 1),
                        children: [
                          Transform.rotate(
                            angle: 1.5708,
                            child: Container(
                              width: 80,
                              height: 4,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          Stack(
                            alignment: AlignmentDirectional(0, 0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Container(
                                  width: 120,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.unity,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              widget.aiToolTwo!.logo,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.asset(
                                'assets/images/error_image.webp',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.aiToolTwo?.name,
                                'N/A',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        widget.aiToolThree!.logo,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.aiToolThree?.name,
                          'N/A',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              'Recipient',
              style: FlutterFlowTheme.of(context).labelMedium,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Advantages',
                        textAlign: TextAlign.end,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12.5, 0, 0),
                        child: Builder(
                          builder: (context) {
                            final combinationAdvantages =
                                widget.thisAdvantages?.toList() ?? [];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                                  List.generate(combinationAdvantages.length,
                                      (combinationAdvantagesIndex) {
                                final combinationAdvantagesItem =
                                    combinationAdvantages[
                                        combinationAdvantagesIndex];
                                return Text(
                                  '- ${combinationAdvantagesItem}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                      ),
                                );
                              }).divide(SizedBox(height: 5)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Disadvantages',
                        textAlign: TextAlign.end,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Montserrat',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12.5, 0, 0),
                        child: Builder(
                          builder: (context) {
                            final combinationDisadvantages =
                                widget.thisDisadvantages?.toList() ?? [];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:
                                  List.generate(combinationDisadvantages.length,
                                      (combinationDisadvantagesIndex) {
                                final combinationDisadvantagesItem =
                                    combinationDisadvantages[
                                        combinationDisadvantagesIndex];
                                return Text(
                                  '- ${combinationDisadvantagesItem}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w500,
                                      ),
                                );
                              }).divide(SizedBox(height: 5)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Automate',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Mulish',
                        color: Colors.white,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ].divide(SizedBox(height: 4)).addToEnd(SizedBox(height: 12)),
        ),
      ),
    );
  }
}
