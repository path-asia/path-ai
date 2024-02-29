import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/a_i_tool_card/a_i_tool_card_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/p_a_t_h_logo/p_a_t_h_logo_widget.dart';
import '/components/top_a_i_tool_card/top_a_i_tool_card_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'filter_page_model.dart';
export 'filter_page_model.dart';

class FilterPageWidget extends StatefulWidget {
  const FilterPageWidget({super.key});

  @override
  State<FilterPageWidget> createState() => _FilterPageWidgetState();
}

class _FilterPageWidgetState extends State<FilterPageWidget> {
  late FilterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.initialResults = await queryAiToolsRecordOnce();
      setState(() {
        _model.filteredAITools =
            _model.initialResults!.toList().cast<AiToolsRecord>();
      });
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.1),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(100.0, 0.0, 100.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed('Home');
                            },
                            child: wrapWithModel(
                              model: _model.pATHLogoModel,
                              updateCallback: () => setState(() {}),
                              child: PATHLogoWidget(),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Home');
                              },
                              child: Text(
                                'Courses (Beta)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ),
                            if (currentUserUid ==
                                '9iii4tgzPNZ4mxe8VovCFWFeqzO2')
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('AIToolCMS');
                                },
                                child: Text(
                                  'AI Tool CMS (Admin)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Mulish',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ),
                          ].divide(SizedBox(width: 50.0)),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 0.0,
                            buttonSize: 32.0,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primary,
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 0.0,
                            buttonSize: 32.0,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primary,
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 0.0,
                            buttonSize: 32.0,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.tiktok,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 0.0,
                            buttonSize: 32.0,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hoverIconColor:
                                FlutterFlowTheme.of(context).primary,
                            icon: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ].divide(SizedBox(width: 5.0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 520.0,
                  child: Stack(
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/home-bg.webp',
                              ).image,
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 0.0,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0x19141516),
                                FlutterFlowTheme.of(context).secondary
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Lottie.asset(
                            'assets/lottie_animations/home-ai.json',
                            width: 150.0,
                            height: 130.0,
                            fit: BoxFit.contain,
                            animate: true,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 15.0),
                          child: Text(
                            'Discover The Ideal AI tools',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Montserrat',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 7.5, 25.0, 7.5),
                              child: Text(
                                'Boost efficiency with top AI tools.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                      lineHeight: 1.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            height: 65.0,
                            constraints: BoxConstraints(
                              minWidth: 500.0,
                              maxWidth: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    flex: 7,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      onFieldSubmitted: (_) async {
                                        await queryAiToolsRecordOnce()
                                            .then(
                                              (records) =>
                                                  _model.simpleSearchResults1 =
                                                      TextSearch(
                                                records
                                                    .map(
                                                      (record) => TextSearchItem
                                                          .fromTerms(record,
                                                              [record.name!]),
                                                    )
                                                    .toList(),
                                              )
                                                          .search(_model
                                                              .textController
                                                              .text)
                                                          .map((r) => r.object)
                                                          .toList(),
                                            )
                                            .onError((_, __) => _model
                                                .simpleSearchResults1 = [])
                                            .whenComplete(
                                                () => setState(() {}));

                                        setState(() {
                                          _model.choiceChipsValueController
                                              ?.reset();
                                        });
                                        setState(() {
                                          _model.filteredAITools = _model
                                              .simpleSearchResults1
                                              .toList()
                                              .cast<AiToolsRecord>();
                                        });
                                      },
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium,
                                        hintText: 'Search AI Tools',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Mulish',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          size: 18.0,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Mulish',
                                            fontSize: 16.0,
                                            lineHeight: 1.35,
                                          ),
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 5.0, 5.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await queryAiToolsRecordOnce()
                                              .then(
                                                (records) => _model
                                                        .simpleSearchResults2 =
                                                    TextSearch(
                                                  records
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem
                                                                .fromTerms(
                                                                    record, [
                                                          record.name!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(_model
                                                            .textController
                                                            .text)
                                                        .map((r) => r.object)
                                                        .toList(),
                                              )
                                              .onError((_, __) => _model
                                                  .simpleSearchResults2 = [])
                                              .whenComplete(
                                                  () => setState(() {}));

                                          setState(() {
                                            _model.choiceChipsValueController
                                                ?.reset();
                                          });
                                          setState(() {
                                            _model.filteredAITools = _model
                                                .simpleSearchResults1
                                                .toList()
                                                .cast<AiToolsRecord>();
                                          });
                                        },
                                        text: '',
                                        icon: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 32.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: double.infinity,
                                          padding: EdgeInsets.all(0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Mulish',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minWidth: 500.0,
                              maxWidth: 1000.0,
                            ),
                            decoration: BoxDecoration(),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowChoiceChips(
                              options: [
                                ChipData('Art', Icons.yard_outlined),
                                ChipData('Audio', Icons.audiotrack_outlined),
                                ChipData('Business', Icons.business_rounded),
                                ChipData('Chat', Icons.chat),
                                ChipData('Coaching', Icons.contactless),
                                ChipData('Data Analysis', Icons.data_usage),
                                ChipData('Design', Icons.design_services),
                                ChipData('Development', Icons.code_sharp),
                                ChipData('Education',
                                    FontAwesomeIcons.graduationCap),
                                ChipData('Finance', Icons.attach_money_sharp),
                                ChipData('Images', Icons.image),
                                ChipData('Marketing', Icons.analytics_rounded)
                              ],
                              onChanged: (val) async {
                                setState(() =>
                                    _model.choiceChipsValue = val?.firstOrNull);
                                _model.filteredResults =
                                    await queryAiToolsRecordOnce(
                                  queryBuilder: (aiToolsRecord) =>
                                      aiToolsRecord.where(
                                    'tags',
                                    arrayContains: _model.choiceChipsValue,
                                  ),
                                );
                                setState(() {
                                  _model.filteredAITools = _model
                                      .filteredResults!
                                      .toList()
                                      .cast<AiToolsRecord>();
                                });

                                setState(() {});
                              },
                              selectedChipStyle: ChipStyle(
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 5.0, 5.0),
                                elevation: 0.0,
                                borderWidth: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFFAAAAAA),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Mulish',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                    ),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                iconSize: 18.0,
                                labelPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 5.0, 5.0),
                                elevation: 0.0,
                                borderWidth: 0.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              chipSpacing: 12.0,
                              rowSpacing: 12.0,
                              multiselect: false,
                              alignment: WrapAlignment.center,
                              controller: _model.choiceChipsValueController ??=
                                  FormFieldController<List<String>>(
                                [],
                              ),
                              wrapped: true,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          constraints: BoxConstraints(
                            maxWidth: 1200.0,
                          ),
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Builder(
                                    builder: (context) {
                                      if (_model.choiceChipsValue == 'Chat') {
                                        return Lottie.asset(
                                          'assets/lottie_animations/home-chat.json',
                                          width: 150.0,
                                          height: 130.0,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        );
                                      } else if (_model.choiceChipsValue ==
                                          'Education') {
                                        return Lottie.asset(
                                          'assets/lottie_animations/home-edu.json',
                                          width: 150.0,
                                          height: 130.0,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        );
                                      } else {
                                        return Lottie.asset(
                                          'assets/lottie_animations/home-default.json',
                                          width: 150.0,
                                          height: 130.0,
                                          fit: BoxFit.contain,
                                          animate: true,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 15.0),
                                child: Text(
                                  'Top AI Tools ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final topaiToolsFiltered = _model
                                        .filteredAITools
                                        .where((e) => e.topai)
                                        .toList()
                                        .take(3)
                                        .toList();
                                    if (topaiToolsFiltered.isEmpty) {
                                      return Center(
                                        child: EmptyListWidget(),
                                      );
                                    }
                                    return GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 40.0,
                                        mainAxisSpacing: 40.0,
                                        childAspectRatio: 0.92,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: topaiToolsFiltered.length,
                                      itemBuilder:
                                          (context, topaiToolsFilteredIndex) {
                                        final topaiToolsFilteredItem =
                                            topaiToolsFiltered[
                                                topaiToolsFilteredIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'AIToolDetail',
                                              queryParameters: {
                                                'aiToolDoc': serializeParam(
                                                  topaiToolsFilteredItem,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'aiToolDoc':
                                                    topaiToolsFilteredItem,
                                              },
                                            );
                                          },
                                          child: TopAIToolCardWidget(
                                            key: Key(
                                                'Keyrzf_${topaiToolsFilteredIndex}_of_${topaiToolsFiltered.length}'),
                                            title: topaiToolsFilteredItem.name,
                                            description: topaiToolsFilteredItem
                                                .description,
                                            price:
                                                topaiToolsFilteredItem.pricing,
                                            previewImage:
                                                topaiToolsFilteredItem.image,
                                            priceModel: topaiToolsFilteredItem
                                                .priceModel,
                                            tags: topaiToolsFilteredItem.tags,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 15.0),
                                child: Text(
                                  'All AI Tools',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final aiToolsFiltered =
                                        _model.filteredAITools.toList();
                                    if (aiToolsFiltered.isEmpty) {
                                      return Center(
                                        child: EmptyListWidget(),
                                      );
                                    }
                                    return GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 40.0,
                                        mainAxisSpacing: 40.0,
                                        childAspectRatio: 0.92,
                                      ),
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: aiToolsFiltered.length,
                                      itemBuilder:
                                          (context, aiToolsFilteredIndex) {
                                        final aiToolsFilteredItem =
                                            aiToolsFiltered[
                                                aiToolsFilteredIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'AIToolDetail',
                                              queryParameters: {
                                                'aiToolDoc': serializeParam(
                                                  aiToolsFilteredItem,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'aiToolDoc':
                                                    aiToolsFilteredItem,
                                              },
                                            );
                                          },
                                          child: AIToolCardWidget(
                                            key: Key(
                                                'Key6mq_${aiToolsFilteredIndex}_of_${aiToolsFiltered.length}'),
                                            title: aiToolsFilteredItem.name,
                                            description:
                                                aiToolsFilteredItem.description,
                                            price: aiToolsFilteredItem.pricing,
                                            previewImage:
                                                aiToolsFilteredItem.image,
                                            priceModel:
                                                aiToolsFilteredItem.priceModel,
                                            tags: aiToolsFilteredItem.tags,
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ].addToEnd(SizedBox(height: 75.0)),
                    ),
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
