package main

import (
	"fmt"
	"crypto/sha256"
	"time"
)

func main() {
	var results [10]int64
	sum := 0

	for i := 0; i < 10; i++ {
		start := time.Now().UnixMilli()
		for j := 0; j < 1_000_000; j++ {
			first := sha256.New()
			first.Write([]byte("hello world"))
		}
		end := time.Now().UnixMilli()

		results[i] = end - start
	}

	for _, num := range results {
    sum += int(num)
	}

	sum = sum / 10

	fmt.Println(sum)
}