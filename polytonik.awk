BEGIN {
  # slurp the latin characters into associative arrays
  while (getline < ARGV[1] > 0) {
    polytonik[$1] = $2;
    regex = (regex ? (regex "|" "(" $1 ")") : "(" $1 ")");
  }

  # shift ARGV
  for (i = 2; i < ARGC; i++) {
    ARGV[i-1] = ARGV[i];
  }
  ARGC--;

  FS = ""
}

{
    for (i = 1; i <= NF; ++i) {
        if ($i == " ") {
            printf("%s", " ")
        } else {
            printf("%s", polytonik[$i])
        }
    }

    printf("\n")
}
