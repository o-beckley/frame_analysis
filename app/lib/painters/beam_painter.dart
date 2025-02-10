import "dart:math";
import "package:flutter/material.dart";
import "package:frame_analysis/grpc_generated/service.pbgrpc.dart";
import "package:frame_analysis/painters/member_painter.dart";

class BeamPainter extends CustomPainter{
  final Beam beam;

  BeamPainter({
    required this.beam,
  });

  @override
  bool shouldRepaint(BeamPainter oldDelegate) => oldDelegate.beam != beam;

  @override
  void paint(Canvas canvas, Size size){
    int numMembers = 0;
    double totalLength = 0.0;
    double minMOI = 0.0;
    double maxMOI = 0.0;
    final maxMemberThickness = size.width / 20;
    final minMemberThickness = size.width / 50;

    for(var c in beam.components){
      if(c.type == BeamComponent_Type.MEMBER){
        numMembers += 1;
        totalLength += c.member.length;
        minMOI = min(minMOI, c.member.momentOfInertia);
        maxMOI = max(maxMOI, c.member.momentOfInertia);
      }
    }
    double lengthOfPreviousMembers = 0.0;

    for(var c in beam.components){
      if(c.type == BeamComponent_Type.MEMBER){

        final thickness = (maxMemberThickness - minMemberThickness)
          * ((c.member.momentOfInertia - minMOI) / (maxMOI - minMOI));
        final length = size.width * (c.member.length / totalLength);
        final position = Offset(size.width * (lengthOfPreviousMembers / totalLength), 0);
        final memberPainter = MemberPainter(
          position: position,
          rotation: 0,
          thickness: thickness,
          length: length,
        );
        memberPainter.paint(canvas, size);
        lengthOfPreviousMembers += c.member.length;
      }
      else if(c.type == BeamComponent_Type.SUPPORT){
        // TODO: draw a support here
      }
    }
  }
}