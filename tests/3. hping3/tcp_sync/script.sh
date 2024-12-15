# Assume you want to send a TCP packet to your Android device. You can use hping3 to simulate a connection and send data. Here’s an example:

# Execute hping3 with the appropriate parameters:

# -S indicates that you are sending a TCP SYN packet (a request to establish a connection).
# -a 192.168.00.01 is your source IP address.
# -c 10 means sending 10 packets.
# -p 80 is the HTTP port on which your device will receive the messages (default port 80).

# 192.168.00.01 is the IP address of the Android device you are sending the message to.

sudo hping3 -S -a 192.168.00.01 -c 10 -p 80 192.168.00.01

# What happens?
# The hping3 tool sends SYN packets to the Android device, which may attempt to establish a connection. 
# The device responds appropriately, sending a response with appropriate flags (e.g., RA - RST ACK, indicating that the connection is 
# closed or the port is closed).