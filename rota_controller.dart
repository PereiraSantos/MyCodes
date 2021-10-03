import 'package:get/get.dart';

abstract class RotaController{
  void goRouter();
}

class Pager implements RotaController{

  dynamic view;

  Pager(this.view);

  @override
  void goRouter() => Get.to(view);
}

class RouterPage{

  RotaController router;

  RouterPage(this.router);

  void goRoute() => router.goRouter();
}

//RouterPage(Pager(SegundaTextForm(Get.put(SegundaTextFormController())))).goRoute();
