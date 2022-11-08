install:
	cp ./src/timeshift.service /usr/lib/systemd/system/timeshift.service
	cp ./src/zz-timeshift.rules /etc/udev/rules.d/zz-timeshift.rules
	systemctl enable timeshift

uninstall:
	systemctl disable timeshift
	rm /etc/udev/rules.d/zz-timeshift.rules
	rm /usr/lib/systemd/system/timeshift.service
