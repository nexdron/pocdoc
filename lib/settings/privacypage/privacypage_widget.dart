import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacypage_model.dart';
export 'privacypage_model.dart';

class PrivacypageWidget extends StatefulWidget {
  const PrivacypageWidget({Key? key}) : super(key: key);

  @override
  _PrivacypageWidgetState createState() => _PrivacypageWidgetState();
}

class _PrivacypageWidgetState extends State<PrivacypageWidget> {
  late PrivacypageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypageModel());
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
            'Privacy & Notifications',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).secondaryText,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Text(
                    'Your Data, Your Control\n\n- Confidentiality: At Pocdoc, we prioritize the confidentiality of your personal and health data. Your information is encrypted and stored securely.\n- Consent-Based Sharing: We only share your data with your explicit consent, whether it\'s with healthcare providers or for personalized health insights.\n- Data Transparency: You have full access to your data at all times. You can view, edit, or delete your personal information in your Pocdoc profile.\n\nUse of Data\n\n-  Improving Services: We use anonymized data to improve Pocdoc\'s features and provide you with a better experience.\n- Health Insights: Personalized health insights are generated based on your data, but your individual information is never shared with third parties for marketing purposes.\n\nData Security\n\n- We implement state-of-the-art security measures to protect your data against unauthorized access, alteration, disclosure, or destruction.\n\nNotifications Settings\n\nCustomizable Alerts\n\n- Health Reminders: Set reminders for medication, hydration, exercise, or any health-related activities.\n- Educational Content: Opt-in to receive notifications about new health articles and videos that match your interests.\n- App Updates: Stay informed about the latest Pocdoc features and updates.\n\nControl Your Preferences\n\n- Personalization: Tailor your notification preferences in the app settings. Choose what kind of notifications you receive and how often.\n- Opt-Out Anytime: You have the freedom to opt-out of notifications at any time. Simply go to your settings to adjust your preferences.\n\nRespecting Your Peace\n\n- We believe in providing valuable notifications without overwhelming you. Our aim is to enhance your Pocdoc experience, not disrupt it.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
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
