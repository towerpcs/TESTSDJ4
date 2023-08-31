FROM windev/webdev-base:FR280094s

COPY Mon_Projet56.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/Mon_Projet56/awws

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/Mon_Projet56/