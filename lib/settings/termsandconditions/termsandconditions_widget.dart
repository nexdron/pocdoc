import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termsandconditions_model.dart';
export 'termsandconditions_model.dart';

class TermsandconditionsWidget extends StatefulWidget {
  const TermsandconditionsWidget({Key? key}) : super(key: key);

  @override
  _TermsandconditionsWidgetState createState() =>
      _TermsandconditionsWidgetState();
}

class _TermsandconditionsWidgetState extends State<TermsandconditionsWidget> {
  late TermsandconditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsandconditionsModel());
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
            'Terms & Conditions',
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
                    'Welcome to Pocdoc! These terms and conditions outline the rules and regulations for the use of Pocdoc\'s App and Services.\n\n1. Acceptance of Terms\n\n    By accessing and using Pocdoc, you agree to comply with these Terms & Conditions. If you do not agree with any part of these terms, please do not use our app.\n\n2. Use of the App\n\n    Eligibility: You must be at least 18 years old to use Pocdoc.\n    Account Responsibility: You are responsible for maintaining the confidentiality of your account and password.\n    Acceptable Use: The app is intended for personal, non-commercial use. Any misuse or unauthorized use of the app is strictly prohibited.\n\n3. Intellectual Property Rights\n\n    All content on Pocdoc, including text, graphics, logos, and software, is the property of Pocdoc or its content suppliers and is protected by intellectual property laws.\n\n4. User-Generated Content\n\n    You may submit content to the app. By doing so, you grant Pocdoc a non-exclusive, worldwide, perpetual license to use, reproduce, and display this content.\n\n5. Privacy Policy\n\n    Our Privacy Policy, which outlines how we handle your data, is an integral part of these Terms & Conditions.\n\n6. Modifications to the App\n\n    Pocdoc reserves the right to modify or discontinue, temporarily or permanently, the app or any service to which it connects, with or without notice.\n\n7. Disclaimer of Warranties\n\n    Pocdoc is provided \"as is\" and \"as available\" without any warranties, expressed or implied, including but not limited to the implied warranties of merchantability or fitness for a particular purpose.\n\n8. Limitation of Liability\n\n    Pocdoc shall not be liable for any indirect, incidental, special, consequential, or punitive damages resulting from the use of or inability to use the service.\n\n9. Indemnification\n\n    You agree to indemnify and hold harmless Pocdoc and its directors, officers, employees, and agents from any claims, damages, or expenses arising from your use of the app.\n\n10. Termination\n\n    Pocdoc reserves the right to terminate your access to the app if you violate these Terms & Conditions.\n\n11. Governing Law\n\n    These Terms shall be governed by the laws of the jurisdiction in which Pocdoc is based, without regard to its conflict of law provisions.\n\n12. Changes to Terms & Conditions\n\n    Pocdoc reserves the right to modify these Terms & Conditions at any time. Your continued use of the app after such modifications will constitute your acknowledgment and agreement to the modified terms.\n\n13. Contact Us\n\n    If you have any questions about these Terms, please contact us.',
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
