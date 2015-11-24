#Script shell monitoramento de  CPU Docker

#docker login --username=rodrigoemerenciano 127.0.0.1 > /dev/null 2>&1

a=`sudo docker ps -q | awk '{print $1}'`
#a=12315634ad
#sleep 5

if [ "$a" != " " ]
then
	#echo $a

	b=`sudo docker stats --no-stream=true $a| awk '{print $2}' | grep -v "CPU"`

	echo $b|sed 's/\%//'
fi
if [ -z "$a" ]
then
	echo 'docker inativo!'
fi
