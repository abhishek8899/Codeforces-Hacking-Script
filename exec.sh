for((i=1;i<102;i++))
{
	cp trash/$i.cpp a.cpp
	# set +e
	g++ -std=c++11 a.cpp 2>/dev/null
	# set -e
	echo -n $i " "
	srf=$(./a.out < input)
	ans=9
	if [[ $srf != $ans ]];
	then
		echo $i $srf $ans
	fi
}
# echo "."
# for((i=1;i<11;i++))
# {
# 	cp trash/$i.cpp a.cpp
# 	# set +e
# 	g++ a.cpp 2>/dev/null
# 	# set -e
# 	echo -n $i " "
# 	srf=$(./a.out < input1)
# 	# ans="SPPSSPSP"
# 	if [ $i == 1 ];
# 	then
# 		ans=$srf
# 	fi
# 	if [ $srf != $ans ];
# 	then
# 		echo $i $srf $ans
# 	fi
# }
# echo "."
# for((i=1;i<11;i++))
# {
# 	cp trash/$i.cpp a.cpp
	# set +e
	# g++ a.cpp 2>/dev/null
	# # set -e
	# echo -n $i " "
	# srf=$(./a.out < input2)
	# # ans="SPPSSPSP"
	# if [ $i == 1 ];
	# then
	# 	ans=$srf
	# fi
	# if [ $srf != $ans ];
	# then
	# 	echo $i $srf $ans
	# fi
# }
# echo "."
# for((i=1;i<11;i++))
# {
# 	cp trash/$i.cpp a.cpp
# 	# set +e
# 	g++ a.cpp 2>/dev/null
# 	# set -e
# 	echo -n $i " "
# 	srf=$(./a.out < input3)
# 	# ans="SPPSSPSP"
# 	if [ $i == 1 ];
# 	then
# 		ans=$srf
# 	fi
# 	if [ $srf != $ans ];
# 	then
# 		echo $i $srf $ans
# 	fi
# }
# echo "."
# for((i=1;i<11;i++))
# {
# 	cp trash/$i.cpp a.cpp
# 	# set +e
# 	g++ a.cpp 2>/dev/null
# 	# set -e
# 	echo -n $i " "
# 	srf=$(./a.out < input4)
# 	# ans="SPPSSPSP"
# 	if [ $i == 1 ];
# 	then
# 		ans=$srf
# 	fi
# 	if [ $srf != $ans ];
# 	then
# 		echo $i $srf $ans
# 	fi
# }
# echo "."
# for((i=1;i<11;i++))
# {
# 	cp trash/$i.cpp a.cpp
# 	# set +e
# 	g++ a.cpp 2>/dev/null
# 	# set -e
# 	echo -n $i " "
# 	srf=$(./a.out < input5)
# 	# ans="SPPSSPSP"
# 	if [ $i == 1 ];
# 	then
# 		ans=$srf
# 	fi
# 	if [ $srf != $ans ];
# 	then
# 		echo $i $srf $ans
# 	fi
# }