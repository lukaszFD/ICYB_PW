# Web application scanner that identifies potential security vulnerabilities

# /home/kali/test_api/
# -h: This flag specifies the target host that Nikto will scan
# -o: This flag indicates that you want to output the results of the scan to a file
# wynik_nikto.txt: This is the name of the output file where Nikto will save the results of the scan. You can choose any name you prefer for the output file

nikto -h http://localhost:8080 -o nikto_log.txt