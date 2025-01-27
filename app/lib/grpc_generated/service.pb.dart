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

/// supports
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
  rollerSupport, 
  hingeSupport, 
  fixedSupport, 
  notSet
}

class Support extends $pb.GeneratedMessage {
  factory Support({
    Support_SupportType? supportType,
    RollerSupport? rollerSupport,
    HingeSupport? hingeSupport,
    FixedSupport? fixedSupport,
  }) {
    final $result = create();
    if (supportType != null) {
      $result.supportType = supportType;
    }
    if (rollerSupport != null) {
      $result.rollerSupport = rollerSupport;
    }
    if (hingeSupport != null) {
      $result.hingeSupport = hingeSupport;
    }
    if (fixedSupport != null) {
      $result.fixedSupport = fixedSupport;
    }
    return $result;
  }
  Support._() : super();
  factory Support.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Support.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Support_Support> _Support_SupportByTag = {
    2 : Support_Support.rollerSupport,
    3 : Support_Support.hingeSupport,
    4 : Support_Support.fixedSupport,
    0 : Support_Support.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Support', createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..e<Support_SupportType>(1, _omitFieldNames ? '' : 'supportType', $pb.PbFieldType.OE, defaultOrMaker: Support_SupportType.UNKNOWN, valueOf: Support_SupportType.valueOf, enumValues: Support_SupportType.values)
    ..aOM<RollerSupport>(2, _omitFieldNames ? '' : 'rollerSupport', subBuilder: RollerSupport.create)
    ..aOM<HingeSupport>(3, _omitFieldNames ? '' : 'hingeSupport', subBuilder: HingeSupport.create)
    ..aOM<FixedSupport>(4, _omitFieldNames ? '' : 'fixedSupport', subBuilder: FixedSupport.create)
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
  Support_SupportType get supportType => $_getN(0);
  @$pb.TagNumber(1)
  set supportType(Support_SupportType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportType() => clearField(1);

  @$pb.TagNumber(2)
  RollerSupport get rollerSupport => $_getN(1);
  @$pb.TagNumber(2)
  set rollerSupport(RollerSupport v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRollerSupport() => $_has(1);
  @$pb.TagNumber(2)
  void clearRollerSupport() => clearField(2);
  @$pb.TagNumber(2)
  RollerSupport ensureRollerSupport() => $_ensure(1);

  @$pb.TagNumber(3)
  HingeSupport get hingeSupport => $_getN(2);
  @$pb.TagNumber(3)
  set hingeSupport(HingeSupport v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHingeSupport() => $_has(2);
  @$pb.TagNumber(3)
  void clearHingeSupport() => clearField(3);
  @$pb.TagNumber(3)
  HingeSupport ensureHingeSupport() => $_ensure(2);

  @$pb.TagNumber(4)
  FixedSupport get fixedSupport => $_getN(3);
  @$pb.TagNumber(4)
  set fixedSupport(FixedSupport v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasFixedSupport() => $_has(3);
  @$pb.TagNumber(4)
  void clearFixedSupport() => clearField(4);
  @$pb.TagNumber(4)
  FixedSupport ensureFixedSupport() => $_ensure(3);
}

/// loadings
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
    Load_LoadType? loadType,
    PointLoad? pointLoad,
    Couple? couple,
    UniformlyDistributedLoad? uniformlyDistributedLoad,
    VerticallyDistributedLoad? verticallyDistributedLoad,
  }) {
    final $result = create();
    if (loadType != null) {
      $result.loadType = loadType;
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
    ..e<Load_LoadType>(1, _omitFieldNames ? '' : 'loadType', $pb.PbFieldType.OE, defaultOrMaker: Load_LoadType.UNKNOWN, valueOf: Load_LoadType.valueOf, enumValues: Load_LoadType.values)
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
  Load_LoadType get loadType => $_getN(0);
  @$pb.TagNumber(1)
  set loadType(Load_LoadType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadType() => clearField(1);

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
    ..pc<Load>(4, _omitFieldNames ? '' : 'loadings', $pb.PbFieldType.PM, subBuilder: Load.create)
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
  $core.List<Load> get loadings => $_getList(3);
}

enum Component_Component {
  support, 
  member, 
  notSet
}

/// component
class Component extends $pb.GeneratedMessage {
  factory Component({
    Component_ComponentType? componentType,
    Support? support,
    Member? member,
  }) {
    final $result = create();
    if (componentType != null) {
      $result.componentType = componentType;
    }
    if (support != null) {
      $result.support = support;
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
    2 : Component_Component.support,
    3 : Component_Component.member,
    0 : Component_Component.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Component', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..e<Component_ComponentType>(1, _omitFieldNames ? '' : 'componentType', $pb.PbFieldType.OE, defaultOrMaker: Component_ComponentType.UNKNOWN, valueOf: Component_ComponentType.valueOf, enumValues: Component_ComponentType.values)
    ..aOM<Support>(2, _omitFieldNames ? '' : 'support', subBuilder: Support.create)
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
  Component_ComponentType get componentType => $_getN(0);
  @$pb.TagNumber(1)
  set componentType(Component_ComponentType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentType() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentType() => clearField(1);

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

/// beam
class Beam extends $pb.GeneratedMessage {
  factory Beam({
    $core.Iterable<Component>? components,
  }) {
    final $result = create();
    if (components != null) {
      $result.components.addAll(components);
    }
    return $result;
  }
  Beam._() : super();
  factory Beam.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Beam.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Beam', createEmptyInstance: create)
    ..pc<Component>(1, _omitFieldNames ? '' : 'components', $pb.PbFieldType.PM, subBuilder: Component.create)
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
  $core.List<Component> get components => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
