//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pbenum.dart';

export 'service.pbenum.dart';

class AnalysisLog extends $pb.GeneratedMessage {
  factory AnalysisLog({
    $core.Iterable<$core.String>? messages,
  }) {
    final $result = create();
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  AnalysisLog._() : super();
  factory AnalysisLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnalysisLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AnalysisLog', createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'messages')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnalysisLog clone() => AnalysisLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnalysisLog copyWith(void Function(AnalysisLog) updates) => super.copyWith((message) => updates(message as AnalysisLog)) as AnalysisLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnalysisLog create() => AnalysisLog._();
  AnalysisLog createEmptyInstance() => create();
  static $pb.PbList<AnalysisLog> createRepeated() => $pb.PbList<AnalysisLog>();
  @$core.pragma('dart2js:noInline')
  static AnalysisLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnalysisLog>(create);
  static AnalysisLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get messages => $_getList(0);
}

class RollerSupport extends $pb.GeneratedMessage {
  factory RollerSupport({
    $core.double? vReaction,
    $core.double? settlement,
  }) {
    final $result = create();
    if (vReaction != null) {
      $result.vReaction = vReaction;
    }
    if (settlement != null) {
      $result.settlement = settlement;
    }
    return $result;
  }
  RollerSupport._() : super();
  factory RollerSupport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RollerSupport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RollerSupport', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'vReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'settlement', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RollerSupport clone() => RollerSupport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RollerSupport copyWith(void Function(RollerSupport) updates) => super.copyWith((message) => updates(message as RollerSupport)) as RollerSupport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollerSupport create() => RollerSupport._();
  RollerSupport createEmptyInstance() => create();
  static $pb.PbList<RollerSupport> createRepeated() => $pb.PbList<RollerSupport>();
  @$core.pragma('dart2js:noInline')
  static RollerSupport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RollerSupport>(create);
  static RollerSupport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get vReaction => $_getN(0);
  @$pb.TagNumber(1)
  set vReaction($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearVReaction() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get settlement => $_getN(1);
  @$pb.TagNumber(2)
  set settlement($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSettlement() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettlement() => clearField(2);
}

class HingeSupport extends $pb.GeneratedMessage {
  factory HingeSupport({
    $core.double? vReaction,
    $core.double? hReaction,
    $core.double? settlement,
  }) {
    final $result = create();
    if (vReaction != null) {
      $result.vReaction = vReaction;
    }
    if (hReaction != null) {
      $result.hReaction = hReaction;
    }
    if (settlement != null) {
      $result.settlement = settlement;
    }
    return $result;
  }
  HingeSupport._() : super();
  factory HingeSupport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HingeSupport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HingeSupport', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'vReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'hReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'settlement', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HingeSupport clone() => HingeSupport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HingeSupport copyWith(void Function(HingeSupport) updates) => super.copyWith((message) => updates(message as HingeSupport)) as HingeSupport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HingeSupport create() => HingeSupport._();
  HingeSupport createEmptyInstance() => create();
  static $pb.PbList<HingeSupport> createRepeated() => $pb.PbList<HingeSupport>();
  @$core.pragma('dart2js:noInline')
  static HingeSupport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HingeSupport>(create);
  static HingeSupport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get vReaction => $_getN(0);
  @$pb.TagNumber(1)
  set vReaction($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearVReaction() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get hReaction => $_getN(1);
  @$pb.TagNumber(2)
  set hReaction($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHReaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearHReaction() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get settlement => $_getN(2);
  @$pb.TagNumber(3)
  set settlement($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSettlement() => $_has(2);
  @$pb.TagNumber(3)
  void clearSettlement() => clearField(3);
}

class FixedSupport extends $pb.GeneratedMessage {
  factory FixedSupport({
    $core.double? vReaction,
    $core.double? hReaction,
    $core.double? mReaction,
    $core.double? settlement,
  }) {
    final $result = create();
    if (vReaction != null) {
      $result.vReaction = vReaction;
    }
    if (hReaction != null) {
      $result.hReaction = hReaction;
    }
    if (mReaction != null) {
      $result.mReaction = mReaction;
    }
    if (settlement != null) {
      $result.settlement = settlement;
    }
    return $result;
  }
  FixedSupport._() : super();
  factory FixedSupport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FixedSupport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FixedSupport', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'vReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'hReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'mReaction', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'settlement', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FixedSupport clone() => FixedSupport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FixedSupport copyWith(void Function(FixedSupport) updates) => super.copyWith((message) => updates(message as FixedSupport)) as FixedSupport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedSupport create() => FixedSupport._();
  FixedSupport createEmptyInstance() => create();
  static $pb.PbList<FixedSupport> createRepeated() => $pb.PbList<FixedSupport>();
  @$core.pragma('dart2js:noInline')
  static FixedSupport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FixedSupport>(create);
  static FixedSupport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get vReaction => $_getN(0);
  @$pb.TagNumber(1)
  set vReaction($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearVReaction() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get hReaction => $_getN(1);
  @$pb.TagNumber(2)
  set hReaction($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHReaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearHReaction() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get mReaction => $_getN(2);
  @$pb.TagNumber(3)
  set mReaction($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMReaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearMReaction() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get settlement => $_getN(3);
  @$pb.TagNumber(4)
  set settlement($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSettlement() => $_has(3);
  @$pb.TagNumber(4)
  void clearSettlement() => clearField(4);
}

enum Support_Support {
  roller, 
  hinge, 
  fixed, 
  notSet
}

class Support extends $pb.GeneratedMessage {
  factory Support({
    Support_Type? type,
    $core.double? positionX,
    $core.double? positionY,
    RollerSupport? roller,
    HingeSupport? hinge,
    FixedSupport? fixed,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (positionX != null) {
      $result.positionX = positionX;
    }
    if (positionY != null) {
      $result.positionY = positionY;
    }
    if (roller != null) {
      $result.roller = roller;
    }
    if (hinge != null) {
      $result.hinge = hinge;
    }
    if (fixed != null) {
      $result.fixed = fixed;
    }
    return $result;
  }
  Support._() : super();
  factory Support.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Support.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Support_Support> _Support_SupportByTag = {
    4 : Support_Support.roller,
    5 : Support_Support.hinge,
    6 : Support_Support.fixed,
    0 : Support_Support.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Support', createEmptyInstance: create)
    ..oo(0, [4, 5, 6])
    ..e<Support_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Support_Type.UNKNOWN, valueOf: Support_Type.valueOf, enumValues: Support_Type.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'positionX', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'positionY', $pb.PbFieldType.OF)
    ..aOM<RollerSupport>(4, _omitFieldNames ? '' : 'roller', subBuilder: RollerSupport.create)
    ..aOM<HingeSupport>(5, _omitFieldNames ? '' : 'hinge', subBuilder: HingeSupport.create)
    ..aOM<FixedSupport>(6, _omitFieldNames ? '' : 'fixed', subBuilder: FixedSupport.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Support clone() => Support()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Support copyWith(void Function(Support) updates) => super.copyWith((message) => updates(message as Support)) as Support;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Support create() => Support._();
  Support createEmptyInstance() => create();
  static $pb.PbList<Support> createRepeated() => $pb.PbList<Support>();
  @$core.pragma('dart2js:noInline')
  static Support getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Support>(create);
  static Support? _defaultInstance;

  Support_Support whichSupport() => _Support_SupportByTag[$_whichOneof(0)]!;
  void clearSupport() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Support_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Support_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get positionX => $_getN(1);
  @$pb.TagNumber(2)
  set positionX($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPositionX() => $_has(1);
  @$pb.TagNumber(2)
  void clearPositionX() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get positionY => $_getN(2);
  @$pb.TagNumber(3)
  set positionY($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPositionY() => $_has(2);
  @$pb.TagNumber(3)
  void clearPositionY() => clearField(3);

  @$pb.TagNumber(4)
  RollerSupport get roller => $_getN(3);
  @$pb.TagNumber(4)
  set roller(RollerSupport v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoller() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoller() => clearField(4);
  @$pb.TagNumber(4)
  RollerSupport ensureRoller() => $_ensure(3);

  @$pb.TagNumber(5)
  HingeSupport get hinge => $_getN(4);
  @$pb.TagNumber(5)
  set hinge(HingeSupport v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasHinge() => $_has(4);
  @$pb.TagNumber(5)
  void clearHinge() => clearField(5);
  @$pb.TagNumber(5)
  HingeSupport ensureHinge() => $_ensure(4);

  @$pb.TagNumber(6)
  FixedSupport get fixed => $_getN(5);
  @$pb.TagNumber(6)
  set fixed(FixedSupport v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFixed() => $_has(5);
  @$pb.TagNumber(6)
  void clearFixed() => clearField(6);
  @$pb.TagNumber(6)
  FixedSupport ensureFixed() => $_ensure(5);
}

class HingedJoint extends $pb.GeneratedMessage {
  factory HingedJoint() => create();
  HingedJoint._() : super();
  factory HingedJoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HingedJoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HingedJoint', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HingedJoint clone() => HingedJoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HingedJoint copyWith(void Function(HingedJoint) updates) => super.copyWith((message) => updates(message as HingedJoint)) as HingedJoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HingedJoint create() => HingedJoint._();
  HingedJoint createEmptyInstance() => create();
  static $pb.PbList<HingedJoint> createRepeated() => $pb.PbList<HingedJoint>();
  @$core.pragma('dart2js:noInline')
  static HingedJoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HingedJoint>(create);
  static HingedJoint? _defaultInstance;
}

class FixedJoint extends $pb.GeneratedMessage {
  factory FixedJoint() => create();
  FixedJoint._() : super();
  factory FixedJoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FixedJoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FixedJoint', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FixedJoint clone() => FixedJoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FixedJoint copyWith(void Function(FixedJoint) updates) => super.copyWith((message) => updates(message as FixedJoint)) as FixedJoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedJoint create() => FixedJoint._();
  FixedJoint createEmptyInstance() => create();
  static $pb.PbList<FixedJoint> createRepeated() => $pb.PbList<FixedJoint>();
  @$core.pragma('dart2js:noInline')
  static FixedJoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FixedJoint>(create);
  static FixedJoint? _defaultInstance;
}

enum Joint_Joint {
  hinged, 
  fixed, 
  notSet
}

class Joint extends $pb.GeneratedMessage {
  factory Joint({
    Joint_Type? type,
    $core.double? positionX,
    $core.double? positionY,
    HingedJoint? hinged,
    FixedJoint? fixed,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (positionX != null) {
      $result.positionX = positionX;
    }
    if (positionY != null) {
      $result.positionY = positionY;
    }
    if (hinged != null) {
      $result.hinged = hinged;
    }
    if (fixed != null) {
      $result.fixed = fixed;
    }
    return $result;
  }
  Joint._() : super();
  factory Joint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Joint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Joint_Joint> _Joint_JointByTag = {
    4 : Joint_Joint.hinged,
    5 : Joint_Joint.fixed,
    0 : Joint_Joint.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Joint', createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..e<Joint_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Joint_Type.UNKNOWN, valueOf: Joint_Type.valueOf, enumValues: Joint_Type.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'positionX', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'positionY', $pb.PbFieldType.OF)
    ..aOM<HingedJoint>(4, _omitFieldNames ? '' : 'hinged', subBuilder: HingedJoint.create)
    ..aOM<FixedJoint>(5, _omitFieldNames ? '' : 'fixed', subBuilder: FixedJoint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Joint clone() => Joint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Joint copyWith(void Function(Joint) updates) => super.copyWith((message) => updates(message as Joint)) as Joint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Joint create() => Joint._();
  Joint createEmptyInstance() => create();
  static $pb.PbList<Joint> createRepeated() => $pb.PbList<Joint>();
  @$core.pragma('dart2js:noInline')
  static Joint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Joint>(create);
  static Joint? _defaultInstance;

  Joint_Joint whichJoint() => _Joint_JointByTag[$_whichOneof(0)]!;
  void clearJoint() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Joint_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Joint_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get positionX => $_getN(1);
  @$pb.TagNumber(2)
  set positionX($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPositionX() => $_has(1);
  @$pb.TagNumber(2)
  void clearPositionX() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get positionY => $_getN(2);
  @$pb.TagNumber(3)
  set positionY($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPositionY() => $_has(2);
  @$pb.TagNumber(3)
  void clearPositionY() => clearField(3);

  @$pb.TagNumber(4)
  HingedJoint get hinged => $_getN(3);
  @$pb.TagNumber(4)
  set hinged(HingedJoint v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasHinged() => $_has(3);
  @$pb.TagNumber(4)
  void clearHinged() => clearField(4);
  @$pb.TagNumber(4)
  HingedJoint ensureHinged() => $_ensure(3);

  @$pb.TagNumber(5)
  FixedJoint get fixed => $_getN(4);
  @$pb.TagNumber(5)
  set fixed(FixedJoint v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFixed() => $_has(4);
  @$pb.TagNumber(5)
  void clearFixed() => clearField(5);
  @$pb.TagNumber(5)
  FixedJoint ensureFixed() => $_ensure(4);
}

enum Node_Node {
  support, 
  joint, 
  notSet
}

class Node extends $pb.GeneratedMessage {
  factory Node({
    Node_Type? type,
    Support? support,
    Joint? joint,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (support != null) {
      $result.support = support;
    }
    if (joint != null) {
      $result.joint = joint;
    }
    return $result;
  }
  Node._() : super();
  factory Node.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Node.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Node_Node> _Node_NodeByTag = {
    2 : Node_Node.support,
    3 : Node_Node.joint,
    0 : Node_Node.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Node', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<Node_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Node_Type.UNKNOWN, valueOf: Node_Type.valueOf, enumValues: Node_Type.values)
    ..aOM<Support>(2, _omitFieldNames ? '' : 'support', subBuilder: Support.create)
    ..aOM<Joint>(3, _omitFieldNames ? '' : 'joint', subBuilder: Joint.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Node clone() => Node()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Node copyWith(void Function(Node) updates) => super.copyWith((message) => updates(message as Node)) as Node;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  Node_Node whichNode() => _Node_NodeByTag[$_whichOneof(0)]!;
  void clearNode() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Node_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Node_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  Support get support => $_getN(1);
  @$pb.TagNumber(2)
  set support(Support v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSupport() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupport() => clearField(2);
  @$pb.TagNumber(2)
  Support ensureSupport() => $_ensure(1);

  @$pb.TagNumber(3)
  Joint get joint => $_getN(2);
  @$pb.TagNumber(3)
  set joint(Joint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasJoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearJoint() => clearField(3);
  @$pb.TagNumber(3)
  Joint ensureJoint() => $_ensure(2);
}

class PointLoad extends $pb.GeneratedMessage {
  factory PointLoad({
    $core.double? xValue,
    $core.double? yValue,
    $core.double? pointOfApplication,
  }) {
    final $result = create();
    if (xValue != null) {
      $result.xValue = xValue;
    }
    if (yValue != null) {
      $result.yValue = yValue;
    }
    if (pointOfApplication != null) {
      $result.pointOfApplication = pointOfApplication;
    }
    return $result;
  }
  PointLoad._() : super();
  factory PointLoad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointLoad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PointLoad', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'xValue', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'yValue', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'pointOfApplication', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PointLoad clone() => PointLoad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PointLoad copyWith(void Function(PointLoad) updates) => super.copyWith((message) => updates(message as PointLoad)) as PointLoad;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointLoad create() => PointLoad._();
  PointLoad createEmptyInstance() => create();
  static $pb.PbList<PointLoad> createRepeated() => $pb.PbList<PointLoad>();
  @$core.pragma('dart2js:noInline')
  static PointLoad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointLoad>(create);
  static PointLoad? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get xValue => $_getN(0);
  @$pb.TagNumber(1)
  set xValue($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasXValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearXValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get yValue => $_getN(1);
  @$pb.TagNumber(2)
  set yValue($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasYValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearYValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get pointOfApplication => $_getN(2);
  @$pb.TagNumber(3)
  set pointOfApplication($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPointOfApplication() => $_has(2);
  @$pb.TagNumber(3)
  void clearPointOfApplication() => clearField(3);
}

class Couple extends $pb.GeneratedMessage {
  factory Couple({
    $core.double? value,
    $core.double? pointOfApplication,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (pointOfApplication != null) {
      $result.pointOfApplication = pointOfApplication;
    }
    return $result;
  }
  Couple._() : super();
  factory Couple.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Couple.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Couple', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'pointOfApplication', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Couple clone() => Couple()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Couple copyWith(void Function(Couple) updates) => super.copyWith((message) => updates(message as Couple)) as Couple;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Couple create() => Couple._();
  Couple createEmptyInstance() => create();
  static $pb.PbList<Couple> createRepeated() => $pb.PbList<Couple>();
  @$core.pragma('dart2js:noInline')
  static Couple getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Couple>(create);
  static Couple? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get pointOfApplication => $_getN(1);
  @$pb.TagNumber(2)
  set pointOfApplication($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPointOfApplication() => $_has(1);
  @$pb.TagNumber(2)
  void clearPointOfApplication() => clearField(2);
}

class UniformlyDistributedLoad extends $pb.GeneratedMessage {
  factory UniformlyDistributedLoad({
    $core.double? value,
    $core.double? startingPoint,
    $core.double? length,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (startingPoint != null) {
      $result.startingPoint = startingPoint;
    }
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  UniformlyDistributedLoad._() : super();
  factory UniformlyDistributedLoad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UniformlyDistributedLoad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UniformlyDistributedLoad', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'startingPoint', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UniformlyDistributedLoad clone() => UniformlyDistributedLoad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UniformlyDistributedLoad copyWith(void Function(UniformlyDistributedLoad) updates) => super.copyWith((message) => updates(message as UniformlyDistributedLoad)) as UniformlyDistributedLoad;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UniformlyDistributedLoad create() => UniformlyDistributedLoad._();
  UniformlyDistributedLoad createEmptyInstance() => create();
  static $pb.PbList<UniformlyDistributedLoad> createRepeated() => $pb.PbList<UniformlyDistributedLoad>();
  @$core.pragma('dart2js:noInline')
  static UniformlyDistributedLoad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UniformlyDistributedLoad>(create);
  static UniformlyDistributedLoad? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get startingPoint => $_getN(1);
  @$pb.TagNumber(2)
  set startingPoint($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartingPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartingPoint() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get length => $_getN(2);
  @$pb.TagNumber(3)
  set length($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearLength() => clearField(3);
}

class VerticallyDistributedLoad extends $pb.GeneratedMessage {
  factory VerticallyDistributedLoad({
    VerticallyDistributedLoad_Orientation? orientation,
    $core.double? vertex,
    $core.double? startingPoint,
    $core.double? length,
  }) {
    final $result = create();
    if (orientation != null) {
      $result.orientation = orientation;
    }
    if (vertex != null) {
      $result.vertex = vertex;
    }
    if (startingPoint != null) {
      $result.startingPoint = startingPoint;
    }
    if (length != null) {
      $result.length = length;
    }
    return $result;
  }
  VerticallyDistributedLoad._() : super();
  factory VerticallyDistributedLoad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerticallyDistributedLoad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerticallyDistributedLoad', createEmptyInstance: create)
    ..e<VerticallyDistributedLoad_Orientation>(1, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.OE, defaultOrMaker: VerticallyDistributedLoad_Orientation.UNKNOWN, valueOf: VerticallyDistributedLoad_Orientation.valueOf, enumValues: VerticallyDistributedLoad_Orientation.values)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'vertex', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'startingPoint', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerticallyDistributedLoad clone() => VerticallyDistributedLoad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerticallyDistributedLoad copyWith(void Function(VerticallyDistributedLoad) updates) => super.copyWith((message) => updates(message as VerticallyDistributedLoad)) as VerticallyDistributedLoad;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerticallyDistributedLoad create() => VerticallyDistributedLoad._();
  VerticallyDistributedLoad createEmptyInstance() => create();
  static $pb.PbList<VerticallyDistributedLoad> createRepeated() => $pb.PbList<VerticallyDistributedLoad>();
  @$core.pragma('dart2js:noInline')
  static VerticallyDistributedLoad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerticallyDistributedLoad>(create);
  static VerticallyDistributedLoad? _defaultInstance;

  @$pb.TagNumber(1)
  VerticallyDistributedLoad_Orientation get orientation => $_getN(0);
  @$pb.TagNumber(1)
  set orientation(VerticallyDistributedLoad_Orientation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrientation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrientation() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get vertex => $_getN(1);
  @$pb.TagNumber(2)
  set vertex($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVertex() => $_has(1);
  @$pb.TagNumber(2)
  void clearVertex() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get startingPoint => $_getN(2);
  @$pb.TagNumber(3)
  set startingPoint($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartingPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartingPoint() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get length => $_getN(3);
  @$pb.TagNumber(4)
  set length($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => clearField(4);
}

enum Load_Load {
  pointLoad, 
  couple, 
  uniformlyDistributedLoad, 
  verticallyDistributedLoad, 
  notSet
}

class Load extends $pb.GeneratedMessage {
  factory Load({
    Load_Type? type,
    PointLoad? pointLoad,
    Couple? couple,
    UniformlyDistributedLoad? uniformlyDistributedLoad,
    VerticallyDistributedLoad? verticallyDistributedLoad,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (pointLoad != null) {
      $result.pointLoad = pointLoad;
    }
    if (couple != null) {
      $result.couple = couple;
    }
    if (uniformlyDistributedLoad != null) {
      $result.uniformlyDistributedLoad = uniformlyDistributedLoad;
    }
    if (verticallyDistributedLoad != null) {
      $result.verticallyDistributedLoad = verticallyDistributedLoad;
    }
    return $result;
  }
  Load._() : super();
  factory Load.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Load.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Load_Load> _Load_LoadByTag = {
    2 : Load_Load.pointLoad,
    3 : Load_Load.couple,
    4 : Load_Load.uniformlyDistributedLoad,
    5 : Load_Load.verticallyDistributedLoad,
    0 : Load_Load.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Load', createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..e<Load_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Load_Type.UNKNOWN, valueOf: Load_Type.valueOf, enumValues: Load_Type.values)
    ..aOM<PointLoad>(2, _omitFieldNames ? '' : 'pointLoad', subBuilder: PointLoad.create)
    ..aOM<Couple>(3, _omitFieldNames ? '' : 'couple', subBuilder: Couple.create)
    ..aOM<UniformlyDistributedLoad>(4, _omitFieldNames ? '' : 'uniformlyDistributedLoad', subBuilder: UniformlyDistributedLoad.create)
    ..aOM<VerticallyDistributedLoad>(5, _omitFieldNames ? '' : 'verticallyDistributedLoad', subBuilder: VerticallyDistributedLoad.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Load clone() => Load()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Load copyWith(void Function(Load) updates) => super.copyWith((message) => updates(message as Load)) as Load;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Load create() => Load._();
  Load createEmptyInstance() => create();
  static $pb.PbList<Load> createRepeated() => $pb.PbList<Load>();
  @$core.pragma('dart2js:noInline')
  static Load getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Load>(create);
  static Load? _defaultInstance;

  Load_Load whichLoad() => _Load_LoadByTag[$_whichOneof(0)]!;
  void clearLoad() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Load_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Load_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  PointLoad get pointLoad => $_getN(1);
  @$pb.TagNumber(2)
  set pointLoad(PointLoad v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPointLoad() => $_has(1);
  @$pb.TagNumber(2)
  void clearPointLoad() => clearField(2);
  @$pb.TagNumber(2)
  PointLoad ensurePointLoad() => $_ensure(1);

  @$pb.TagNumber(3)
  Couple get couple => $_getN(2);
  @$pb.TagNumber(3)
  set couple(Couple v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCouple() => $_has(2);
  @$pb.TagNumber(3)
  void clearCouple() => clearField(3);
  @$pb.TagNumber(3)
  Couple ensureCouple() => $_ensure(2);

  @$pb.TagNumber(4)
  UniformlyDistributedLoad get uniformlyDistributedLoad => $_getN(3);
  @$pb.TagNumber(4)
  set uniformlyDistributedLoad(UniformlyDistributedLoad v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUniformlyDistributedLoad() => $_has(3);
  @$pb.TagNumber(4)
  void clearUniformlyDistributedLoad() => clearField(4);
  @$pb.TagNumber(4)
  UniformlyDistributedLoad ensureUniformlyDistributedLoad() => $_ensure(3);

  @$pb.TagNumber(5)
  VerticallyDistributedLoad get verticallyDistributedLoad => $_getN(4);
  @$pb.TagNumber(5)
  set verticallyDistributedLoad(VerticallyDistributedLoad v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasVerticallyDistributedLoad() => $_has(4);
  @$pb.TagNumber(5)
  void clearVerticallyDistributedLoad() => clearField(5);
  @$pb.TagNumber(5)
  VerticallyDistributedLoad ensureVerticallyDistributedLoad() => $_ensure(4);
}

class Member extends $pb.GeneratedMessage {
  factory Member({
    $core.double? length,
    $core.double? elasticModulus,
    $core.double? momentOfInertia,
    $core.double? positionX,
    $core.double? positionY,
    $core.Iterable<Load>? loadings,
  }) {
    final $result = create();
    if (length != null) {
      $result.length = length;
    }
    if (elasticModulus != null) {
      $result.elasticModulus = elasticModulus;
    }
    if (momentOfInertia != null) {
      $result.momentOfInertia = momentOfInertia;
    }
    if (positionX != null) {
      $result.positionX = positionX;
    }
    if (positionY != null) {
      $result.positionY = positionY;
    }
    if (loadings != null) {
      $result.loadings.addAll(loadings);
    }
    return $result;
  }
  Member._() : super();
  factory Member.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Member.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Member', createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OF)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'elasticModulus', $pb.PbFieldType.OF)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'momentOfInertia', $pb.PbFieldType.OF)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'positionX', $pb.PbFieldType.OF)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'positionY', $pb.PbFieldType.OF)
    ..pc<Load>(6, _omitFieldNames ? '' : 'loadings', $pb.PbFieldType.PM, subBuilder: Load.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Member clone() => Member()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Member copyWith(void Function(Member) updates) => super.copyWith((message) => updates(message as Member)) as Member;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Member create() => Member._();
  Member createEmptyInstance() => create();
  static $pb.PbList<Member> createRepeated() => $pb.PbList<Member>();
  @$core.pragma('dart2js:noInline')
  static Member getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Member>(create);
  static Member? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get length => $_getN(0);
  @$pb.TagNumber(1)
  set length($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLength() => $_has(0);
  @$pb.TagNumber(1)
  void clearLength() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get elasticModulus => $_getN(1);
  @$pb.TagNumber(2)
  set elasticModulus($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasElasticModulus() => $_has(1);
  @$pb.TagNumber(2)
  void clearElasticModulus() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get momentOfInertia => $_getN(2);
  @$pb.TagNumber(3)
  set momentOfInertia($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMomentOfInertia() => $_has(2);
  @$pb.TagNumber(3)
  void clearMomentOfInertia() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get positionX => $_getN(3);
  @$pb.TagNumber(4)
  set positionX($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPositionX() => $_has(3);
  @$pb.TagNumber(4)
  void clearPositionX() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get positionY => $_getN(4);
  @$pb.TagNumber(5)
  set positionY($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPositionY() => $_has(4);
  @$pb.TagNumber(5)
  void clearPositionY() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<Load> get loadings => $_getList(5);
}

enum BeamComponent_Component {
  member, 
  support, 
  notSet
}

class BeamComponent extends $pb.GeneratedMessage {
  factory BeamComponent({
    BeamComponent_Type? type,
    Member? member,
    Support? support,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (member != null) {
      $result.member = member;
    }
    if (support != null) {
      $result.support = support;
    }
    return $result;
  }
  BeamComponent._() : super();
  factory BeamComponent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeamComponent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BeamComponent_Component> _BeamComponent_ComponentByTag = {
    2 : BeamComponent_Component.member,
    3 : BeamComponent_Component.support,
    0 : BeamComponent_Component.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BeamComponent', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<BeamComponent_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: BeamComponent_Type.UNKNOWN, valueOf: BeamComponent_Type.valueOf, enumValues: BeamComponent_Type.values)
    ..aOM<Member>(2, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..aOM<Support>(3, _omitFieldNames ? '' : 'support', subBuilder: Support.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeamComponent clone() => BeamComponent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeamComponent copyWith(void Function(BeamComponent) updates) => super.copyWith((message) => updates(message as BeamComponent)) as BeamComponent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeamComponent create() => BeamComponent._();
  BeamComponent createEmptyInstance() => create();
  static $pb.PbList<BeamComponent> createRepeated() => $pb.PbList<BeamComponent>();
  @$core.pragma('dart2js:noInline')
  static BeamComponent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeamComponent>(create);
  static BeamComponent? _defaultInstance;

  BeamComponent_Component whichComponent() => _BeamComponent_ComponentByTag[$_whichOneof(0)]!;
  void clearComponent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BeamComponent_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(BeamComponent_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  Member get member => $_getN(1);
  @$pb.TagNumber(2)
  set member(Member v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMember() => $_has(1);
  @$pb.TagNumber(2)
  void clearMember() => clearField(2);
  @$pb.TagNumber(2)
  Member ensureMember() => $_ensure(1);

  @$pb.TagNumber(3)
  Support get support => $_getN(2);
  @$pb.TagNumber(3)
  set support(Support v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSupport() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupport() => clearField(3);
  @$pb.TagNumber(3)
  Support ensureSupport() => $_ensure(2);
}

enum Component_Component {
  node, 
  member, 
  notSet
}

class Component extends $pb.GeneratedMessage {
  factory Component({
    Component_Type? type,
    Node? node,
    Member? member,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (node != null) {
      $result.node = node;
    }
    if (member != null) {
      $result.member = member;
    }
    return $result;
  }
  Component._() : super();
  factory Component.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Component.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Component_Component> _Component_ComponentByTag = {
    2 : Component_Component.node,
    3 : Component_Component.member,
    0 : Component_Component.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Component', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<Component_Type>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Component_Type.UNKNOWN, valueOf: Component_Type.valueOf, enumValues: Component_Type.values)
    ..aOM<Node>(2, _omitFieldNames ? '' : 'node', subBuilder: Node.create)
    ..aOM<Member>(3, _omitFieldNames ? '' : 'member', subBuilder: Member.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Component clone() => Component()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Component copyWith(void Function(Component) updates) => super.copyWith((message) => updates(message as Component)) as Component;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Component create() => Component._();
  Component createEmptyInstance() => create();
  static $pb.PbList<Component> createRepeated() => $pb.PbList<Component>();
  @$core.pragma('dart2js:noInline')
  static Component getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Component>(create);
  static Component? _defaultInstance;

  Component_Component whichComponent() => _Component_ComponentByTag[$_whichOneof(0)]!;
  void clearComponent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Component_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Component_Type v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  Node get node => $_getN(1);
  @$pb.TagNumber(2)
  set node(Node v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearNode() => clearField(2);
  @$pb.TagNumber(2)
  Node ensureNode() => $_ensure(1);

  @$pb.TagNumber(3)
  Member get member => $_getN(2);
  @$pb.TagNumber(3)
  set member(Member v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMember() => $_has(2);
  @$pb.TagNumber(3)
  void clearMember() => clearField(3);
  @$pb.TagNumber(3)
  Member ensureMember() => $_ensure(2);
}

class Beam extends $pb.GeneratedMessage {
  factory Beam({
    $core.Iterable<BeamComponent>? components,
    AnalysisLog? log,
  }) {
    final $result = create();
    if (components != null) {
      $result.components.addAll(components);
    }
    if (log != null) {
      $result.log = log;
    }
    return $result;
  }
  Beam._() : super();
  factory Beam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Beam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Beam', createEmptyInstance: create)
    ..pc<BeamComponent>(1, _omitFieldNames ? '' : 'components', $pb.PbFieldType.PM, subBuilder: BeamComponent.create)
    ..aOM<AnalysisLog>(2, _omitFieldNames ? '' : 'log', subBuilder: AnalysisLog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Beam clone() => Beam()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Beam copyWith(void Function(Beam) updates) => super.copyWith((message) => updates(message as Beam)) as Beam;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Beam create() => Beam._();
  Beam createEmptyInstance() => create();
  static $pb.PbList<Beam> createRepeated() => $pb.PbList<Beam>();
  @$core.pragma('dart2js:noInline')
  static Beam getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Beam>(create);
  static Beam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BeamComponent> get components => $_getList(0);

  @$pb.TagNumber(2)
  AnalysisLog get log => $_getN(1);
  @$pb.TagNumber(2)
  set log(AnalysisLog v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLog() => $_has(1);
  @$pb.TagNumber(2)
  void clearLog() => clearField(2);
  @$pb.TagNumber(2)
  AnalysisLog ensureLog() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
