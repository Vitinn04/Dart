void main() {
  int n1 = 1, n2 = 1;
  print("$n1  $n2");

  for (int i = 3; n1 + n2 < 1000; i++) {
    int nextnum = n1 + n2;
    print(nextnum);
    n1 = n2;
    n2 = nextnum;
  }
}
