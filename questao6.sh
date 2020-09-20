#!/bin/bash

grep /bin/bash /etc/passwd | wc -l >> user.txt | echo 'Usuário que utilizam /bin/bash:'
cat user.txt
grep /usr /etc/passwd | wc -l >> user.txt
echo "Usuários que não utilizam o /bin/bash:"
paste -sd- user.txt | bc
rm user.txt

