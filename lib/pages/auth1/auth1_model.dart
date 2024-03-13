import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'auth1_widget.dart' show Auth1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Auth1Model extends FlutterFlowModel<Auth1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for namecreate widget.
  FocusNode? namecreateFocusNode;
  TextEditingController? namecreateController;
  String? Function(BuildContext, String?)? namecreateControllerValidator;
  // State field(s) for emailaddresscreate widget.
  FocusNode? emailaddresscreateFocusNode;
  TextEditingController? emailaddresscreateController;
  String? Function(BuildContext, String?)?
      emailaddresscreateControllerValidator;
  // State field(s) for passwordcreate widget.
  FocusNode? passwordcreateFocusNode;
  TextEditingController? passwordcreateController;
  late bool passwordcreateVisibility;
  String? Function(BuildContext, String?)? passwordcreateControllerValidator;
  // State field(s) for emailAddresslogin widget.
  FocusNode? emailAddressloginFocusNode;
  TextEditingController? emailAddressloginController;
  String? Function(BuildContext, String?)? emailAddressloginControllerValidator;
  // State field(s) for passwordlogin widget.
  FocusNode? passwordloginFocusNode;
  TextEditingController? passwordloginController;
  late bool passwordloginVisibility;
  String? Function(BuildContext, String?)? passwordloginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordcreateVisibility = false;
    passwordloginVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    namecreateFocusNode?.dispose();
    namecreateController?.dispose();

    emailaddresscreateFocusNode?.dispose();
    emailaddresscreateController?.dispose();

    passwordcreateFocusNode?.dispose();
    passwordcreateController?.dispose();

    emailAddressloginFocusNode?.dispose();
    emailAddressloginController?.dispose();

    passwordloginFocusNode?.dispose();
    passwordloginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
