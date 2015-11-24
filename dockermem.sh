#Script Monitoramento de taxa de memória do docker container

a=`sudo docker ps -q | awk '{print $1}'`
#a=12315634ad
#sleep 5

if [ "$a" != " " ]
then
        #echo $a

        b=`sudo docker stats --no-stream=true $a | awk '{print $8}' | grep -v "MEM" `

        echo $b|sed 's/\%//'
fi
if [ -z "$a" ]
then
        echo 'docker inativo!'
fi




