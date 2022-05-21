Future<T?> cityFilters(BuildContext context, {required List<T> list}) async{
  return await Get.dialog(
    Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),

      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            color: Colors.black12,
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    "CIDADE",
                    style: TextStyle(fontSize: 24, color: Colors.black87),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "ESTADO",
                    style: TextStyle(fontSize: 24, color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 55.0, bottom: 80.0),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GetBuilder<T>(
                      id: 'rebuildSelectUser',
                      builder: (_controller) {
                        return ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: list.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              color: ControllerSearch().to.checkCitySelect(list[index].cod!)
                                  ? Colors.black12
                                  : Colors.white,
                              child: InkWell(
                                onTap: () => ControllerSearch().to.selectCity(list[index]),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Text("${list[index].city}",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text("${list[index].state}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Icon(Icons.check,
                                          size: 25,
                                          color: ControllerSearch().to.checkCitySelect(list[index].cod!)
                                          ? Colors.green
                                          : Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              color: Colors.black12,
              padding: EdgeInsets.all(08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(()=> Get.back(), label: "CANCELAR", color: Colors.green),
                  CustomButton(() => Get.back(result: ControllerSearch().to.selectedCitySizing), label: "CONFIRMAR"),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

CitySizing? citySizing = await  cityFilters(context, list: list);
