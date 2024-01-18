import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackingPatientRecord extends FirestoreRecord {
  TrackingPatientRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
    _name = snapshotData['name'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tracking_patient');

  static Stream<TrackingPatientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackingPatientRecord.fromSnapshot(s));

  static Future<TrackingPatientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackingPatientRecord.fromSnapshot(s));

  static TrackingPatientRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackingPatientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackingPatientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackingPatientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackingPatientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackingPatientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackingPatientRecordData({
  LatLng? location,
  String? name,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'name': name,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackingPatientRecordDocumentEquality
    implements Equality<TrackingPatientRecord> {
  const TrackingPatientRecordDocumentEquality();

  @override
  bool equals(TrackingPatientRecord? e1, TrackingPatientRecord? e2) {
    return e1?.location == e2?.location &&
        e1?.name == e2?.name &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(TrackingPatientRecord? e) =>
      const ListEquality().hash([e?.location, e?.name, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is TrackingPatientRecord;
}
