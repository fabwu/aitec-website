# AITEC Website
Repository für die Website im Modul AITEC an der Hochschule Luzern

## Installieren
Um Rails auf Ubuntu zu installieren müssen folgende Befehle ausgeführt werden (Ruby sollte schon auf der VM sein):

```bash
sudo apt-get install ruby-dev zlib1g-dev sqlite3 libsqlite3-dev libmysqlclient-dev
mysql_tzinfo_to_sql /usr/share/zoneinfo/
sudo gem install rails
git clone https://github.com/wuethrich44/aitec-website/
cd aitec-website/
bundle install
```
Um den Server zu starten führe folgenden Befehl aus:

```bash
rails server
```
