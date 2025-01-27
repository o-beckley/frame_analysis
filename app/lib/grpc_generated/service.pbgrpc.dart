//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('FrameAnalysis')
class FrameAnalysisClient extends $grpc.Client {
  static final _$analyzeBeam = $grpc.ClientMethod<$0.Beam, $0.Beam>(
      '/FrameAnalysis/AnalyzeBeam',
      ($0.Beam value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Beam.fromBuffer(value));

  FrameAnalysisClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Beam> analyzeBeam($0.Beam request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$analyzeBeam, request, options: options);
  }
}

@$pb.GrpcServiceName('FrameAnalysis')
abstract class FrameAnalysisServiceBase extends $grpc.Service {
  $core.String get $name => 'FrameAnalysis';

  FrameAnalysisServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Beam, $0.Beam>(
        'AnalyzeBeam',
        analyzeBeam_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Beam.fromBuffer(value),
        ($0.Beam value) => value.writeToBuffer()));
  }

  $async.Future<$0.Beam> analyzeBeam_Pre($grpc.ServiceCall call, $async.Future<$0.Beam> request) async {
    return analyzeBeam(call, await request);
  }

  $async.Future<$0.Beam> analyzeBeam($grpc.ServiceCall call, $0.Beam request);
}
