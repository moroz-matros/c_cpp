#include "gtest/gtest.h"

extern "C" {
#include "../include/c_cpp/driver.h"
}

static const char good_input[] = "100";
static const char bad_input_word[] = "qqq";
static const char bad_input_mixed[] = "100q";
static const char bad_input_float[] = "100.50";
static const char file_name[] = "input.txt";

TEST(input, ok) {
    ASSERT_EQ(check_input(const_cast<char *>(good_input)), 100);
}

TEST(input, bad_word) {
    ASSERT_EQ(check_input(const_cast<char *>(bad_input_word)), -1);
}

TEST(input, bad_mixed) {
    ASSERT_EQ(check_input(const_cast<char *>(bad_input_mixed)), -1);
}

TEST(input, bad_float) {
    ASSERT_EQ(check_input(const_cast<char *>(bad_input_float)), -1);
}

TEST (file_creation, ok){
    ASSERT_EQ (create_file(), 0);
}

TEST (file_open, not_existing_file){
    try {
        remove(file_name);
    } catch (const std::exception& e) {
        GTEST_FAIL() << e.what(); //if unable to delete file show fail, we need to delete it
    }
    size_t n = 100;
    ASSERT_EQ (find_drivers(n), 1);
}

TEST(empty_file, normal_work){
    try {
        FILE *f = fopen(file_name, "wb");
        fclose(f);
    } catch (const std::exception& e) {
        GTEST_FAIL() << e.what(); //if unable to delete file show, we need to delete it
    }
    size_t n = 100;
    ASSERT_EQ (find_drivers(n), 0);
}

