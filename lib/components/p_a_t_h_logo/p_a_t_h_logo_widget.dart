import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'p_a_t_h_logo_model.dart';
export 'p_a_t_h_logo_model.dart';

class PATHLogoWidget extends StatefulWidget {
  const PATHLogoWidget({
    super.key,
    Color? activeColor,
  }) : this.activeColor = activeColor ?? Colors.white;

  final Color activeColor;

  @override
  State<PATHLogoWidget> createState() => _PATHLogoWidgetState();
}

class _PATHLogoWidgetState extends State<PATHLogoWidget> {
  late PATHLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PATHLogoModel());

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
      width: 120.0,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Text(
        'P.A.T.H',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Dune Rise',
              color: widget.activeColor,
              fontSize: 21.0,
              fontWeight: FontWeight.normal,
              useGoogleFonts: false,
            ),
      ),
    );
  }
}
