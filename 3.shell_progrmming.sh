# script 파일 생성
touch myscript.sh
nano myscript.sh

# if문
if 조건 참이면 A하겠다.
그렇지 않으면, B하겠다.

if 조건
    A하겠다.
else 
    B하겠다.

        > 
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# if문과 변수 활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt" => =은 띄어쓰기 하지말기
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else 
    echo "$file_name does not exist"
fi

# for문 기본
for 반복의 횟수
 반복하는동안 할 행위

for 100
    echo "hello world"

for a in {1..100}
do
    echo "hello world$a"
done

# if문 실습 : test4.sh
- echo로 start출력
- 만약에 test_dir이 현재 폴더에 있으면 해당 폴더로 이동
- 없으면 해당 폴더 생성 후 이동
- echo로 end출력
- test4.txt 없으면 생성
- 해당 파일에 
hello world1 
hello world2
...
hello world100 까지 입력
/test_dir 안에 test4.txt 파일이 있어야 하고 그 안에 hello world 다 있어야함

# for문 활용한 count세기
count=0
for a in {1..100}
do
   ((count++))
done
echo "count is $count"

특정디렉토리 안에 file은 몇갠지 directory 몇개인지
출력하는 프로그램 만들기

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
  echo "a is $a"
done

# for문 활용한 file의 개수와 directory의 개수와 그 외의 파일 세기
dir_count=0
others=0
for a in *
do
  if [ -d "$a" ]; then
     ((dir_count++))
  else
     ((others++))
  fi
done
echo "dir_count is $dir_count"
echo "others is $others"