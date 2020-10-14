# c_cpp

Вариант #17
Создать структуру для хранения информации о накопителе:
 его инвентарном номере, типе (CD, HDD, DVD и т.д.), 
 емкости, возможности перезаписи. 
 Составить с ее использованием программу вывода 
 информации обо всех накопителях, допускающих без удаления 
 информации запись затребованного пользователем объема данных.

valgrind
//valgrind --tool=memcheck --leak-check=full --leak-resolution=med  --track-origins=yes ./cmake-build-debug/c_cpp 

gtest
//cd cmake-build-debug
//ctest -VV