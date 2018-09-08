extern int strcmp_ext(const char *a, const char *b);

int entry(int *mem)
{
  char a[] = "abcx";
  char b[] = "abcy";

  if (strcmp_ext(a, a) != 0) {
    return 1;
  }

  if (strcmp_ext(a, b) == 0) {
    return 1;
  }

  return 0;
}
