class Events {
  // some member variables
}

class SVList {
  String name;
  int contentLen;
  List<Events> listEvents;

  SVList() {
    this.name = "";
    this.contentLen = 0;
    this.listEvents = new List<Events>();
  }
}

class GList {
  List<SVList> listSVList;

  GList(int num) {
    this.listSVList = new List<SVList>(num);
  }
}

main() {
  //array of class objects
  GList gList = new GList(5);
  gList.listSVList[0] = new SVList();
  gList.listSVList[0].listEvents.add(new Events());
  print(gList.listSVList[0].listEvents.length);
}
