import '/flutter_flow/flutter_flow_util.dart';
import 'editar_viagem_widget.dart' show EditarViagemWidget;
import 'package:flutter/material.dart';

class EditarViagemModel extends FlutterFlowModel<EditarViagemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for urlimg widget.
  FocusNode? urlimgFocusNode;
  TextEditingController? urlimgController;
  String? Function(BuildContext, String?)? urlimgControllerValidator;
  // State field(s) for investdestino widget.
  FocusNode? investdestinoFocusNode;
  TextEditingController? investdestinoController;
  String? Function(BuildContext, String?)? investdestinoControllerValidator;
  // State field(s) for descrdestino widget.
  FocusNode? descrdestinoFocusNode;
  TextEditingController? descrdestinoController;
  String? Function(BuildContext, String?)? descrdestinoControllerValidator;
  // State field(s) for vontadedest widget.
  FocusNode? vontadedestFocusNode;
  TextEditingController? vontadedestController;
  String? Function(BuildContext, String?)? vontadedestControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    urlimgFocusNode?.dispose();
    urlimgController?.dispose();

    investdestinoFocusNode?.dispose();
    investdestinoController?.dispose();

    descrdestinoFocusNode?.dispose();
    descrdestinoController?.dispose();

    vontadedestFocusNode?.dispose();
    vontadedestController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
