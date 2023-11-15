import '../../../lib.dart';

class SingleReadController extends GetxController {
  static final instance = Get.find<SingleReadController>();

  //*String
  String singleString = 'N/A';
  void getSingleString() async {
    final result = await SingleFirestoreReadRepository().fetchSingleString();
    if (result != null) {
      singleString = result;
    } else {
      FHelperFunctions.showSnackBar("Fail to fetch data");
    }
    update();
  }

  //*int
  int? singelInt;
  void getSingleInt() async {
    final result = await SingleFirestoreReadRepository().fetchSingleInt();
    if (result != null) {
      singelInt = result;
      FHelperFunctions.showSnackBar("Data Fetched");
    } else {
      FHelperFunctions.showSnackBar("Fail to fetch data");
    }
    update();
  }

  //*bool
  bool? singleBool;
  void getSingleBool() async {
    final result = await SingleFirestoreReadRepository().fetchSingleBool();
    if (result != null) {
      singleBool = result;
      FHelperFunctions.showSnackBar("Data Fetched");
    } else {
      FHelperFunctions.showSnackBar("Fail to fetch data");
    }
    update();
  }

  //*Timestamp
  Timestamp? singleTimestamp;
  void getsingleTimestamp() async {
    final result = await SingleFirestoreReadRepository().fetchSingleTimestamp();
    if (result != null) {
      singleTimestamp = result;
      FHelperFunctions.showSnackBar("Data Fetched");
    } else {
      FHelperFunctions.showSnackBar("Fail to fetch data");
    }
    update();
  }

  //*GeoPoint
  GeoPoint? singleGeopoint;
  void getSingleGeopoint() async {
    final result = await SingleFirestoreReadRepository().fetchSingleGeopint();
    if (result != null) {
      singleGeopoint = result;
      FHelperFunctions.showSnackBar('Data Fetched');
    } else {
      FHelperFunctions.showSnackBar('Fail to fetch data');
    }
    update();
  }


  //*Nested
  // List<String>? singleNestedNum;
ReadNestedModel? singleNestedObject;

  void getSingleNestedObject() async {
    final result =
        await SingleFirestoreReadRepository().fetchSingleNestedObject();

    if (result != null) {
      singleNestedObject = result;

      FHelperFunctions.showSnackBar('Data Fetched');
    } else {
      FHelperFunctions.showSnackBar('Fail to Fetch data');
    }
    update();
  }

  //*Array field
  List<String>? singleArrayField;
  void getSingleArrayField() async {
    final result =
        await SingleFirestoreReadRepository().fetchSingleArrayField();
    if (result != null) {
      singleArrayField = result;
      FHelperFunctions.showSnackBar('Data Fetched');
    } else {
      FHelperFunctions.showSnackBar('Fail to fetch data');
    }
    update();
  }

}
