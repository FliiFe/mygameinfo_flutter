import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mygameinfo/api/api.dart';
import 'package:mygameinfo/store/module.dart';
import 'package:mygameinfo/util.dart';

class LevelCardCarousel extends StatefulWidget {
  const LevelCardCarousel({
    super.key,
  });

  @override
  State<LevelCardCarousel> createState() => _LevelCardCarouselState();
}

class _LevelCardCarouselState extends State<LevelCardCarousel> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController(viewportFraction: 0.9);
    super.initState();
  }

  Function(dynamic) _scrollToCurrent(int level) {
    void aux([_]) {
      if (controller?.hasClients ?? false) {
        controller!.animateToPage(level - 1,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeInOut);
      }
    }

    return aux;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, (UserLevelInfo?, List<LevelDescription>)>(
      converter: (store) =>
          (store.state.userLevelInfo, store.state.levelDescriptions),
      builder: (context, info) {
        final userInfo = info.$1;
        final levelDescs = info.$2;
        WidgetsBinding.instance
            .addPostFrameCallback(_scrollToCurrent(userInfo?.level ?? 0));
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                _scrollToCurrent(userInfo?.level ?? 0)(null);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Current level${userInfo == null ? "" : ":"} ${userInfo?.level ?? ""}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(colors: [
                  Colors.transparent,
                  Colors.black,
                  Colors.black,
                  Colors.transparent
                ], stops: [
                  0,
                  0.05,
                  0.95,
                  1
                ]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: SizedBox(
                height: 150,
                child: PageView(
                  controller: controller,
                  // controller: ScrollController(
                  //     initialScrollOffset:
                  //         screenWidth * 0.9 * ((userInfo?.level ?? 1) - 1)),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: levelDescs.map((element) {
                    final levelColorStyle = TextStyle(
                        color: toPastelText(
                            Color(int.parse(
                                "ff${element.classColour ?? "808080"}",
                                radix: 16)),
                            light:
                                !(PlatformTheme.of(context)?.isDark ?? false)));
                    return Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StoreConnector<AppState, CDNInfo?>(
                              converter: (store) => store.state.cdnInfo,
                              builder: (ctx, cdnInfo) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CachedNetworkImage(
                                      height: 100,
                                      imageUrl:
                                          "https:${cdnInfo?.cdn}/rankings/${element.id}-l.png"),
                                );
                              }),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Level ${element.level ?? "N/A"}"),
                              Text(
                                element.name ?? "N/A",
                                style: levelColorStyle,
                              ),
                              Text(
                                element.className ?? "N/A",
                                style: levelColorStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
