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