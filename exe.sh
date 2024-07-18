#!/bin/bash

# コンパイル
cc test.c -o div
cc test2.c -o flag
cc test3.c -o bit

# 引数の配列
arguments=(1000 10000 100000 1000000)

# 結果ファイルをクリア
echo "" > result.txt

# 各引数に対してプログラムを実行
for arg in "${arguments[@]}"; do
    echo "Running div with argument $arg" | tee -a result.txt
    { time ./div $arg; } 2>&1 1>/dev/tty | awk '/real/{print $0 "\n"}' >> result.txt

    echo "Running flag with argument $arg" | tee -a result.txt
    { time ./flag $arg; } 2>&1 1>/dev/tty | awk '/real/{print $0 "\n"}' >> result.txt

    echo "Running bit with argument $arg" | tee -a result.txt
    { time ./bit $arg; } 2>&1 1>/dev/tty | awk '/real/{print $0 "\n"}' >> result.txt
done

# 結果をエディタで開く
nvim result.txt

