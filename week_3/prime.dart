void main() {
  
  outerLoop:
  for (int i = 2; i <= 201; i++) {
    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) continue outerLoop;
    }
    print("${i.toString().padRight(3)} <= prima ditemukan! Akhmad Aakhif Athallah: 2341720071");
  }

}