import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:musicplayer/MusicPages/songRepository.dart';
import '../PageManager.dart';
import '../audio_Handler.dart';
GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AudioHandler>(await initAudioService());
  // page state
  getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());

  getIt.registerLazySingleton<PageManager>(() => PageManager());
}
