/*
 * @Author       : Chiefer Humber
 * @Date         : 2021-09-14 21:44:05
 * @LastEditors  : Chiefer Humber
 * @LastEditTime : 2021-10-31 15:59:54
 * @Description  : file content
 */
#pragma once

#define set_byte1(byte, bit) ((byte) |= (1<<bit))
#define set_byte0(byte, bit) ((byte) &= (~(1 << bit)))

#include <iostream>
#include <fstream>
#include <cstdio>
#include <bitset>
#include <array>
#include <vector>
#include <cmath>
#include <climits>
#include <cstdlib>
#include <string>
#include <cstring>
#include <algorithm>

// Boost library
#include <boost/program_options.hpp>

extern bool gIsDetailedMode;
extern std::string gInputFileName;
extern std::string gRegisterStatusFileName;
extern int gBeginningAddress;

inline int CharToDec(const char &ch) {
    if (ch >= '0' && ch <= '9') {
        return ch - '0';
    }
    if (ch >= 'A' && ch <= 'F') {
        return ch - 'A' + 10;
    }
    return -1;
}

inline char DecToChar(const int &num) {
    if (num <= 9) {
        return num + '0';
    } else {
        return num - 10 + 'A';
    }
    return -1;
}

inline int RecognizeNumberValue(std::string s) {
    // Convert string s into a number
    // TO BE DONE
    bool typ=0;
    int temp = 0;
    char type=s[0];
    std::string check = s;
    if(type!='0' && type!='1'){
        check.erase(0,1);
    }
    if(check[0]=='-'){
        typ=1;
        check.erase(0,1);
    }
    reverse(check.begin(), check.end());
    if(type=='x'||type=='X'){
        for(int i = 0; i<check.size();i++) 
            temp+=CharToDec(check[i])*pow(16,i);
    }
    else if(type=='#'){
        for(int i = 0; i<check.size();i++) 
            temp+=CharToDec(check[i])*pow(10,i);
    }
    else{
        for(int i = 0; i<check.size();i++) 
            temp+=CharToDec(check[i])*pow(2,i);
    }
    if(typ)temp=-temp;
    return temp;
}

