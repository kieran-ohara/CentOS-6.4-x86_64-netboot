yum install nfs-utils nfs-utils-lib
chkconfig nfs on 
service rpcbind start
service nfs start