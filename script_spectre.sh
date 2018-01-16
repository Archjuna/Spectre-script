# !/bin/sh
# Script pour vérifier la vulnérabilité du système sur les failles spectre et meltdown.
# Pour plus d'info aller voir : https://github.com/speed47/spectre-meltdown-checker

if [ -f /bin/wget ]; then
	wget --progress=bar -O script_check.sh https://raw.githubusercontent.com/speed47/spectre-meltdown-checker/master/spectre-meltdown-checker.sh
else
	echo "Merci d'installer wget !"
fi
chmod +x script_check.sh
sudo ./script_check.sh | grep '\(CVE\|STATUS\)'
echo "Pensez à mettre à jour votre BIOS (si possible), vos navigateur web et vos distribution (+ microcode)"
rm script_check.sh

