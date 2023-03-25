### Sử dụng AppStyle trong project :
```
example: Text('Tai khoan', style: ReliposTextStyles.small)
```
### Cách tạo một màn hình mới:
1. Tạo một folder mới trong thư mục `lib/presentation/screen` có tên là tên màn hình
2. Tạo một file mới trong folder vừa tạo có tên là `screen_name_screen.dart`
```
class Example extends GetWidget<ExampleController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
```
3. Tạo một file mới trong folder vừa tạo có tên là `screen_name_controller.dart`
```
class ExampleController extends GetxController {
  final _example = ''.obs;
  String get example => _example.value;
  set example(String value) => _example.value = value;
}
```
4. Tạo một file mới trong folder vừa tạo có tên là `screen_name_binding.dart`
```
class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
  }
}
```
5. Tạo một routes mới trong `lib/presentation/routes/route.dart`
```
class ReliposRoutes {
  static const String loginRoutes = "/login";
  static const String homeRoutes = "/home";
}

class RoutePages {
  static final pages = [
    GetPage(
      name: ReliposRoutes.loginRoutes,
      page: () => LoginScreen(),
      binding: LoginBiding(),
    ),
    GetPage(
      name: ReliposRoutes.homeRoutes,
      page: () => HomeScreen(),
      binding: HomeBiding(),
    ),
  ];
}
```

### Cách call api:
1. Tạo một file mới trong folder `lib/data/service/` có tên là `example_serive.dart`
2. Viết các funtion trong abstract class `ExampleService` trong file vừa tạo
```
abstract class ExampleService {
  Future<ExampleResponse> getExample();
  Future<ExampleResponse> postExample();
  Future<ExampleResponse> postExample2(RequestBody requestBody);
}
Implement ExampleService trong file vừa tạo
class ExampleServiceImpl implements ExampleService {
  @override
  Future<ExampleResponse> getExample() async {
    final response = await Get.find<ApiService>().makeGet(
      '/example',
    );
    return ExampleResponse.fromJson(response);
  }
  
  @override
  Future<ExampleResponse> postExample() async {
    final response = await Get.find<ApiService>().makePost(
      '/example',
    );
    return ExampleResponse.fromJson(response);
  }
  
  @override
  Future<ExampleResponse> postExample2(RequestBody requestBody) async {
    final response = await Get.find<ApiService>().makePost(
      '/example',
      body: requestBody.toJson(),
    );
    return ExampleResponse.fromJson(response);
  }
}
```
3. Khởi tạo trong binding của màn hình
```
class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
    Get.lazyPut<ExampleService>(() => ExampleService());
  }
}
```
4. Viết function call api trong controller của màn hình đó
```
class ExampleController extends GetxController {
  final ExampleService _exampleService = Get.find<ExampleService>();
  
  final ExampleResponse example;
  
  Future<ExampleResponse> getExample() async {
    try {
      final response = await _exampleService.getExample();
      example = response;
    } catch (e) {
      showErrorDialog(e);
    }
  }
}
```