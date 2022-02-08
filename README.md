# zerologon-restore

Canal de youtube  https://youtube.com/c/Anonimo501

Grupo en Telegram https://t.me/Pen7esting

## zerologon-restore

Es un script que repara la contraseña de la cuenta del equipo para funcione correctamente el active directory, luego de haber resivido el ataque zerologon, es muy importante saber que es necesario ejecutar este script luego de haber explotado la vulnerabilidad de zerologon ya que luego de haber vulnerado el servidor no podremos unir equipos al dominio AD, este script lo que hace es restaurar los daños restaurando la contraseña.

## Important para que el script funcione

Para que el script funcione correctamente, debe ejecutarse dentro del directorio /zerologon/exploit/CVE-2020-1472, en este lugar debemos tener el zerologon-restore.sh y ejecudar desde dicha ruta, a continuacion un ejemplo.

![Screenshot_1](https://user-images.githubusercontent.com/67207446/153087737-d74b1643-d9ef-4a77-9626-407436472926.png)

# Sistema Operativo 

Parrot OS 4.11.2

![zerologon-restore](https://user-images.githubusercontent.com/67207446/153087779-571c072b-b3cf-4bbb-bfd6-edb3767f73da.png)

## Uso

git clone https://github.com/Anonimo501/zerologon.git

cd zerologon/

chmod +x zerologon.sh

./zerologon.sh
