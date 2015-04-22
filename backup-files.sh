#!/bin/sh
# Faz o backup de todos arquivos do portal
# Last updated: Aug - 2011
# By Lucas Arthur Penz - lucas.arthur@hotmail.com

MAILTO="lucas.ti@fasul.edu.br" # Email para onde sera enviado o aviso de sucesso

NOW="$(date +"%d-%m-%Y")" # Pega data no formato dd-mm-yyyy

DEST="/backup_hd320/portal/$NOW" # Diretório de destino do backup
    
[ ! -d $DEST ] && mkdir -p $DEST || : # Cria o diretório

cp -R -v /var/www/ $DEST/ #Copia todos arquivos
 
echo "Backup automático do portal executado com sucesso. Os arquivos estão disponíveis em /backup_hd320/portal/" | mail -s "Backup Automático PORTAL" $MAILTO
