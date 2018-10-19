## DPKG & APT cheetsheet

DPKG - работа с локальными пакетами, быстро
APT - работа с репозиторными пакетами, медленнее

### Установить локальный пакет
```
dpkg -i package_name.deb (install)
```

### Удалить пакет
```
dpkg -r package_name   (remove)
apt remove package_name
```

### Удалить пакет с конфигам
```
dpkg -P package_name   (purge)
apt purge package_name
```

### Список установленных пакетов
```
dpkg -l                (list packages)
apt list --installed
```

### Инфа установленного пакета
```
dpkg -p package_name   (print info)
```

### Файлы установленного пакета
```
dpkg -L package_name   (List files)
```

#### Найти владельца файла
```
dpkg -S /path/to/file  (Search owner)
```

### Обновить список досутпных пакетов
```
apt update
```

### Cписок доступных пакетов
```
apt list
```

### Инфа доступного пакета
```
apt show package_name
```

### Установить досупный пакет
```
apt install package_name
```
