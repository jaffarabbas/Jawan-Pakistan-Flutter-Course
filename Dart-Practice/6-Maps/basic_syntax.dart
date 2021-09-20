void main() {
  var maps = {1:'2',2:'3',3:{1:'asd',2:'34','34':'34'}};
  maps.forEach((key, value) {
    print(value);
  });
}