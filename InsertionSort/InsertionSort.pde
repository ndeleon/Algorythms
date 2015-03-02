int[] box = { 9, 3, 5, 6, 8, 7, 1, 2, 0, 4 };

void setup(){
  println(box);
  println("sotring");
  swap(box);
  println(box);
  println("done");
}

int[] swap(int[] unsorted){
  for (int i = 0; i < unsorted.length - 1; i++){
    int smallest = unsorted[i];
    for (int n = 1; n < unsorted.length; n++){
      while (smallest > unsorted[n]){
        smallest = unsorted[n];
      }
    }
    int s = i;
    int x = smallest;
    smallest = s;
    unsorted[i] = smallest;
    unsorted[i+1] = x;
  }  
  return unsorted;
}
