extension RootExtraction on num {

  findRootExtraction(double number, int n) {

    double root = number / n;
    double eps = 0.01;
    int countIteration = 0;
    while( root - number / root > eps ){
      countIteration++;
      root = 0.5 * (root + number / root);
      print("Iteration: $countIteration, root: $root");
    }
    print("root = $root");
    return root;
  }

}


