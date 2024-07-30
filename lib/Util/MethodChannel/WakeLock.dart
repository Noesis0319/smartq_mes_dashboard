//
// class WakeLock {
//   WakeLock._();
//
//   static Future<bool> wakeUp() async {
//     return WakeLockPlatform.instance.wakeUp();
//   }
// }
//
//
// abstract class WakeLockPlatform extends PlatformInterface {
//   /// Constructs a AndroidWakeLockPlatform.
//   WakeLockPlatform() : super(token: _token);
//
//   static final Object _token = Object();
//
//   static WakeLockPlatform _instance = MethodChannelWakeLock();
//
//   /// The default instance of [AndroidWakeLockPlatform] to use.
//   ///
//   /// Defaults to [MethodChannelAndroidWakeLock].
//   static WakeLockPlatform get instance => _instance;
//
//   /// Platform-specific implementations should set this with their own
//   /// platform-specific class that extends [AndroidWakeLockPlatform] when
//   /// they register themselves.
//   static set instance(WakeLockPlatform instance) {
//     PlatformInterface.verifyToken(instance, _token);
//     _instance = instance;
//   }
//
//   Future<bool> wakeUp() {
//     throw UnimplementedError('wakeUp() has not been implemented.');
//   }
// }
//
// class MethodChannelWakeLock extends WakeLockPlatform {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('android_wake_lock');
//
//   @override
//   Future<bool> wakeUp() async {
//     return await methodChannel.invokeMethod<bool>('wakeUp') ?? false;
//   }
// }