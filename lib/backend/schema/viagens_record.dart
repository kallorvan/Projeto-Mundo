import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ViagensRecord extends FirestoreRecord {
  ViagensRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "Vontade" field.
  double? _vontade;
  double get vontade => _vontade ?? 0.0;
  bool hasVontade() => _vontade != null;

  // "Investimento" field.
  double? _investimento;
  double get investimento => _investimento ?? 0.0;
  bool hasInvestimento() => _investimento != null;

  // "ImgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "Visitado" field.
  bool? _visitado;
  bool get visitado => _visitado ?? false;
  bool hasVisitado() => _visitado != null;

  void _initializeFields() {
    _nome = snapshotData['Nome'] as String?;
    _descricao = snapshotData['Descricao'] as String?;
    _vontade = castToType<double>(snapshotData['Vontade']);
    _investimento = castToType<double>(snapshotData['Investimento']);
    _imgUrl = snapshotData['ImgUrl'] as String?;
    _visitado = snapshotData['Visitado'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Viagens');

  static Stream<ViagensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViagensRecord.fromSnapshot(s));

  static Future<ViagensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViagensRecord.fromSnapshot(s));

  static ViagensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViagensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViagensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViagensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViagensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViagensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViagensRecordData({
  String? nome,
  String? descricao,
  double? vontade,
  double? investimento,
  String? imgUrl,
  bool? visitado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nome': nome,
      'Descricao': descricao,
      'Vontade': vontade,
      'Investimento': investimento,
      'ImgUrl': imgUrl,
      'Visitado': visitado,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViagensRecordDocumentEquality implements Equality<ViagensRecord> {
  const ViagensRecordDocumentEquality();

  @override
  bool equals(ViagensRecord? e1, ViagensRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.descricao == e2?.descricao &&
        e1?.vontade == e2?.vontade &&
        e1?.investimento == e2?.investimento &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.visitado == e2?.visitado;
  }

  @override
  int hash(ViagensRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.descricao,
        e?.vontade,
        e?.investimento,
        e?.imgUrl,
        e?.visitado
      ]);

  @override
  bool isValidKey(Object? o) => o is ViagensRecord;
}
