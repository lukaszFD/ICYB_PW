# --flood - This option runs hping3 in flood mode, which means that the program will send packets at the maximum possible rate, without waiting for replies. This is often used for server load testing or for security purposes.

# -S - Sets the SYN flag on TCP packets being sent. The SYN flag is used to initiate a TCP connection. This means that hping3 will send TCP packets with this flag set.

# -p 8080 - Specifies the port to which the packets are to be sent. In this case, port 8080, which is often used by web applications and HTTP servers.

# 192.168.1.45 - This is the IP address of the endpoint to which the packets are sent. 

# > - the forwarding operator 

# ~/hping3_log.txt - This is the full path to the file where the output will be saved. The ~ stands for the user's home directory, and hping3_log.txt is the name of the file to which the logs will be written.

hping3 --flood -S -p 8080 192.168.1.45 > ~/hping3_log.txt