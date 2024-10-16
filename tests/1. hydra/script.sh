# /home/user/hydra-tests/
# |-- l.txt       # file with usernames
# |-- p.txt       # file with passwords

# -L l.txt: Specifies the file with usernames.
# -P p.txt: Specifies the file with passwords.
# -s 8080: Specifies the port on which your API is running.
# -f: Stops further tests after the first successful login.
# -t 4: Sets the number of parallel threads (you can adjust as needed).

hydra -L usernames.txt -P passwords.txt -s 8080 -f -t 4 http-get://localhost:8080/api/login