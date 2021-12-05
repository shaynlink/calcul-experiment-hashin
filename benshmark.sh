cd lab

echo "Benchmark generated on $(date)  " > ./../lab.md
echo "Average of 10 generating of 1 000 000 hashes (sha256)  " >> ./../lab.md
echo "| Benchmark | Time (ms) |  " >> ./../lab.md
echo "|-----------|-----------|  " >> ./../lab.md

g++ ./lab.cpp -o lab_cpp

echo "| C++ | $(./lab_cpp) |  " >> ./../lab.md

echo "| NodeJS | $(node.exe lab.js) |  " >> ./../lab.md

echo "| Python | $(python lab.py) |  " >> ./../lab.md

go build -o lab_go lab.go

echo "| Go | $(./lab_go) |  " >> ./../lab.md