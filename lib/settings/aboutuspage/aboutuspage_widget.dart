import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aboutuspage_model.dart';
export 'aboutuspage_model.dart';

class AboutuspageWidget extends StatefulWidget {
  const AboutuspageWidget({Key? key}) : super(key: key);

  @override
  _AboutuspageWidgetState createState() => _AboutuspageWidgetState();
}

class _AboutuspageWidgetState extends State<AboutuspageWidget> {
  late AboutuspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutuspageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'About us',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Text(
                    'Pocdoc',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                child: Text(
                  'Welcome to Pocdoc, your personalized digital health assistant! Our mission is to empower you with comprehensive and accessible information about your health.\n\nWhat We Offer:\n\n- Personalized Health Insights: Pocdoc analyzes your health data to provide tailored advice and insights. Stay informed about your well-being with easy-to-understand health metrics and suggestions.\n- Educational Resources: Dive into a vast library of articles, videos, and interactive tools designed to educate you about various health topics. From nutrition to exercise, mental health to chronic disease management, Pocdoc covers it all.\n- Symptom Checker: Our AI-driven symptom checker helps you understand potential health issues and guides you on when to seek professional advice.\n- Privacy First: Your health data is sensitive, and we treat it with the utmost confidentiality. Pocdoc uses advanced security measures to ensure your information remains private and secure.\n\nOur Vision:\nTo revolutionize health education and empower individuals to take control of their health journey. With Pocdoc, staying informed and proactive about your health is simple and convenient.\n\nJoin us on this journey towards a healthier, more informed you!',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
