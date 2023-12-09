import '/flutter_flow/flutter_flow_util.dart';
import 'criar_viagem_widget.dart' show CriarViagemWidget;
import 'package:flutter/material.dart';

class CriarViagemModel extends FlutterFlowModel<CriarViagemWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nomedest widget.
  FocusNode? nomedestFocusNode;
  TextEditingController? nomedestController;
  String? Function(BuildContext, String?)? nomedestControllerValidator;
  // State field(s) for descrdestino widget.
  FocusNode? descrdestinoFocusNode;
  TextEditingController? descrdestinoController;
  String? Function(BuildContext, String?)? descrdestinoControllerValidator;
  // State field(s) for vontadedest widget.
  FocusNode? vontadedestFocusNode;
  TextEditingController? vontadedestController;
  String? Function(BuildContext, String?)? vontadedestControllerValidator;
  // State field(s) for investdestino widget.
  FocusNode? investdestinoFocusNode;
  TextEditingController? investdestinoController;
  String? Function(BuildContext, String?)? investdestinoControllerValidator;
  // State field(s) for imgdestino widget.
  FocusNode? imgdestinoFocusNode;
  TextEditingController? imgdestinoController;
  String? Function(BuildContext, String?)? imgdestinoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    nomedestFocusNode?.dispose();
    nomedestController?.dispose();

    descrdestinoFocusNode?.dispose();
    descrdestinoController?.dispose();

    vontadedestFocusNode?.dispose();
    vontadedestController?.dispose();

    investdestinoFocusNode?.dispose();
    investdestinoController?.dispose();

    imgdestinoFocusNode?.dispose();
    imgdestinoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
