import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'dart:io' show Platform;
import '../../features/auth/data/services/auth_service.dart';

class DioClient {
  late final Dio _dio;
  DioCacheInterceptor? _cacheInterceptor;
  final AuthService _authService;

  DioClient(this._authService) {
    _initializeDio();
  }

  void _initializeDio() {
    // Use your local IP address with port
    const String serverIp = '192.168.0.101';
    const int serverPort = 3000;
    const baseUrl = 'http://$serverIp:$serverPort/api';

    print('DioClient: Initializing with baseUrl: $baseUrl'); // Debug print
    print('DioClient: Platform is ${Platform.isAndroid ? 'Android' : 'iOS'}'); // Debug print

    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        validateStatus: (status) {
          print('DioClient: Response status: $status'); // Debug print
          return status != null && status < 500;
        },
      ),
    );

    _setupInterceptors();
    _setupCacheInterceptor();
  }

  Future<void> _setupCacheInterceptor() async {
    try {
      final cacheDir = await getTemporaryDirectory();
      print('DioClient: Cache directory: ${cacheDir.path}'); // Debug print
      
      final cacheStore = HiveCacheStore(
        cacheDir.path,
        hiveBoxName: 'dio_cache',
      );

      _cacheInterceptor = DioCacheInterceptor(
        options: CacheOptions(
          store: cacheStore,
          policy: CachePolicy.refreshForceCache,
          hitCacheOnErrorExcept: [401, 403],
          maxStale: const Duration(days: 7),
          priority: CachePriority.normal,
        ),
      );

      if (_cacheInterceptor != null) {
        _dio.interceptors.add(_cacheInterceptor!);
      }
      
      print('DioClient: Cache interceptor setup complete'); // Debug print
    } catch (e) {
      print('DioClient: Error setting up cache: $e');
    }
  }

  void _setupInterceptors() {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: (object) {
          print('DIO: $object'); // Debug print
        },
      ),
    );

    // Add auth token interceptor
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = _authService.getToken();
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
            print('DioClient: Adding token to request: Bearer $token'); // Debug print
          } else {
            print('DioClient: No token found'); // Debug print
          }
          return handler.next(options);
        },
        onError: (DioException e, ErrorInterceptorHandler handler) {
          if (e.response?.statusCode == 401) {
            print('DioClient: Unauthorized error - Token might be invalid or expired');
            // You might want to trigger a logout or token refresh here
            _authService.removeToken();
          }
          return handler.next(e);
        },
      ),
    );

    print('DioClient: Interceptors setup complete'); // Debug print
  }

  Dio get dio => _dio;
}
