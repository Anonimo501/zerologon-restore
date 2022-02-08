# zerologon-restore

Canal de youtube  https://youtube.com/c/Anonimo501

Grupo en Telegram https://t.me/Pen7esting

## zerologon-restore

Es un script que repara la contraseña de la cuenta del equipo para funcione correctamente el active directory, luego de haber resivido el ataque zerologon, es muy importante saber que es necesario ejecutar este script luego de haber explotado la vulnerabilidad de zerologon ya que luego de haber vulnerado el servidor no podremos unir equipos al dominio AD, este script lo que hace es restaurar los daños restaurando la contraseña.

## Important para que el script funcione

Para que el script funcione correctamente, debe ejecutarse dentro del directorio /zerologon/exploit/CVE-2020-1472, en este lugar debemos tener el zerologon-restore.sh y ejecudar desde dicha ruta, a continuacion un ejemplo.



## Uso

git clone https://github.com/Anonimo501/zerologon.git

cd zerologon/

chmod +x zerologon.sh

./zerologon.sh
