tshark.exe -r "C:\Users\c50-AfricanFalls3\UNODC-GPC-001-003-JohnDoe-NetworkCapture-2021-04-29.pcapng" -Y "ftp && ip.src == 192.168.1.26"

tshark.exe -r "C:\Users\c50-AfricanFalls3\UNODC-GPC-001-003-JohnDoe-NetworkCapture-2021-04-29.pcapng" -Y "ftp" -T fields -e data | findstr "Pass"

tshark.exe -i Wi-Fi -Y "ip.src == 192.168.1.00 or ip.src == 192.168.1.00 or ip.dst == 192.168.1.00 or ip.dst == 192.168.1.00"

tshark.exe -i 5 -Y "ip.src == 192.168.1.00 or ip.src == 192.168.1.00 or ip.dst == 192.168.1.00 or ip.dst == 192.168.1.00"

