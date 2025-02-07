import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:frame_analysis/grpc_generated/client.dart';
import 'package:frame_analysis/grpc_generated/init_py.dart';
import 'package:frame_analysis/grpc_generated/service.pbgrpc.dart';

Future<void> pyInitResult = Future(() => null);

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  pyInitResult = initPy();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  Future<AppExitResponse> didRequestAppExit() {
    shutdownPyIfAny();
    return super.didRequestAppExit();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  Beam? analyzedBeam;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Using ',
                    ),
                    TextSpan(
                      text: '$defaultHost:$defaultPort',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                      ', ${localPyStartSkipped ? 'skipped launching local server' : 'launched local server'}',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 50,
                child:
                // Add FutureBuilder that awaits pyInitResult
                FutureBuilder<void>(
                  future: pyInitResult,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Stack(
                        children: [
                          SizedBox(height: 4, child: LinearProgressIndicator()),
                          Positioned.fill(
                            child: Center(
                              child: Text(
                                'Loading Python...',
                              ),
                            ),
                          ),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      // If error is returned by the future, display an error message
                      return Text('Error: ${snapshot.error}');
                    } else {
                      // When future completes, display a message saying that Python has been loaded
                      // Set the text color of the Text widget to green
                      return const Text(
                        'Python has been loaded',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      );
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              Text("Analyzed: ${analyzedBeam}"),
              ElevatedButton(
                onPressed: () async {
                  final beam = Beam(
                    components: [
                      BeamComponent(
                        type:BeamComponent_Type.SUPPORT,
                        support: Support(
                          type: Support_Type.FIXED,
                          fixed: FixedSupport()
                        )
                      ),
                      BeamComponent(
                        type: BeamComponent_Type.MEMBER,
                        member: Member(
                          length: 8,
                          elasticModulus: 70e9,
                          momentOfInertia: 800e-6,
                          // loadings: [
                          //   Load(
                          //     type: Load_Type.POINT,
                          //     pointLoad: PointLoad(
                          //       pointOfApplication: 2.5,
                          //       yValue: 10,
                          //     )
                          //   ),
                          //   // Load(
                          //   //   loadType: Load_LoadType.UNIFORMLY_DISTRIBUTED_LOAD,
                          //   //   uniformlyDistributedLoad: UniformlyDistributedLoad(
                          //   //     // orientation: VerticallyDistributedLoad_Orientation.LEFT,
                          //   //     value: 3,
                          //   //     length: 4,
                          //   //     startingPoint: 0
                          //   //   )
                          //   // ),
                          //   // Load(
                          //   //   loadType: Load_LoadType.COUPLE,
                          //   //   couple: Couple(
                          //   //     value: 10,
                          //   //     pointOfApplication: 2
                          //   //   )
                          //   // )
                          // ]
                        )
                      ),
                      BeamComponent(
                          type:BeamComponent_Type.SUPPORT,
                          support: Support(
                              type: Support_Type.ROLLER,
                              roller: RollerSupport(
                                settlement: 20e-3
                              )
                          )
                      ),
                      BeamComponent(
                        type: BeamComponent_Type.MEMBER,
                        member: Member(
                            length: 8,
                            elasticModulus: 70e9,
                            momentOfInertia: 800e-6
                        )
                      ),
                      BeamComponent(
                          type:BeamComponent_Type.SUPPORT,
                          support: Support(
                              type: Support_Type.ROLLER,
                              roller: RollerSupport()
                          )
                      ),
                      BeamComponent(
                        type: BeamComponent_Type.MEMBER,
                        member: Member(
                            length: 8,
                            elasticModulus: 70e9,
                            momentOfInertia: 800e-6
                        )
                      ),
                      BeamComponent(
                          type:BeamComponent_Type.SUPPORT,
                          support: Support(
                              type: Support_Type.FIXED,
                              fixed: FixedSupport()
                          )
                      ),
                    ]
                  );
                  final result = await FrameAnalysisClient(getClientChannel()).analyzeBeam(beam);
                  setState(() {
                    analyzedBeam = result;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize:
                  const Size(140, 36), // Set minimum width to 120px
                ),
                child: const Text('Analyze'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}