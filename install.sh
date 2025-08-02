echo "Running install script..."
apt-get update && apt-get install -y \
	curl \
	sudo \
	locales \
	tzdata
echo "Finished running install script..."
