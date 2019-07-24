//sample1.inc далее INCLUDE sample1.h - демонстрация включаемых файлов инструкцией :)
#INCLUDE sample1.h

#define IDS_APP_TITLE         "Пример приложения"
#define IDS_APP_NAME          "SampleApp"
#define IDS_APP_AUTHOR        "Ангус Джонсон"

#define RELEASE                 

#if defined(RELEASE)
  #define MAJOR_VERSION         1
  #define MINOR_VERSION         2
  #define RELEASE_NUMBER        3
  //и просто показывая, что возможно ...
  #define BUILD_NUMBER          (40*(5+5)+56)    
#else 
  #define MAJOR_VERSION         0
  #define MINOR_VERSION         0
  #define RELEASE_NUMBER        0
  #define BUILD_NUMBER          0
#endif

//1. объединение чисел со строками приведет к созданию строковой переменной
//2. чтобы преобразовать число в строковую переменную, просто соедините его с пустой строкой
//3. компилятор принимает в качестве числовых значений только целые числа (десятичные, шестнадцатеричные или восьмеричные).
#define IDS_DOTTED_VER_NO     MAJOR_VERSION + "." + MINOR_VERSION + "." + RELEASE_NUMBER + "." + BUILD_NUMBER
