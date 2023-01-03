#### Horizontal to vertical
```
awk ' { for(i=1;i<=NF;i++)
          { print $i }
        } ' filename
```

#### Identify container from storage   

for container in $(sudo docker ps -aq) ; do if [ ! -z "$(sudo docker inspect $container | grep 4453e239ed3a02f4)" ] ; then echo $container ; fi; done


#### Test connectivity from backend via curl

curl -L -k --verbose --header 'Host: abc.example.com' https://localhost

