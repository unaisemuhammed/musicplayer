import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:just_audio/just_audio.dart';

class PageManger {
  final buttonNotifier = ValueNotifier(ButtonState.paused);
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(current: Duration.zero, total: Duration.zero),
  );

  late AudioPlayer _audioPlayer;

  PageManger() {
    _init();
  }

  static const path = 'Assets/Selena2.mp3';

  void _init() async {
    _audioPlayer = AudioPlayer();
    await _audioPlayer.setAsset(path);

    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (!isPlaying) {
        buttonNotifier.value = ButtonState.paused;
      } else if (processingState != ProcessingState.completed) {
        buttonNotifier.value = ButtonState.playing;
      } else {
        _audioPlayer.pause();
        _audioPlayer.seek(Duration.zero);
      }
    });

    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        total: oldState.total,
      );
    });

    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
          current: oldState.current, total: totalDuration ?? Duration.zero);
    });
  }

  void play() {
    _audioPlayer.play();
  }

  void pause() {
    _audioPlayer.pause();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void playAndPause() {
    ValueListenableBuilder<ButtonState>(
      valueListenable: buttonNotifier,
      builder: (context, value, child) {
        switch (value) {
          case ButtonState.paused:
            return IconButton(
              iconSize: 35,
              color: Colors.white,
              onPressed: _audioPlayer.play,
              icon: Icon(Icons.play_arrow),
            );
          case ButtonState.playing:
            return IconButton(
              iconSize: 35,
              color: Colors.white,
              onPressed: _audioPlayer.pause,
              icon: Icon(Icons.pause),
            );
        }
      },
    );
  }
}

class ProgressBarState {
  final Duration current;
  final Duration total;

  ProgressBarState({required this.current, required this.total});
}

enum ButtonState { paused, playing }
