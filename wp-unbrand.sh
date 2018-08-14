#!/bin/bash

clear

# Entro en el directorio:

cd ./wordpress/

# Elimino directorios y archivos no necesarios:

rm ./licencia.txt			# Sólo para la versión en español
rm ./license.txt
rm ./readme.html
rm ./wp-activate.php			# Sólo si no se va a permitir alta autónoma de nuevos usuarios
rm ./wp-comments-post.php		# ¿Se puede eliminar si no se van a usar comentarios nativos de Wordpress? Sí
rm ./wp-config-sample.php		# Sólo para actualizaciones, necesario para nuevas instalaciones
rm ./wp-links-opml.php			# Si no se va a utilizar ¡comprueba que la theme no lo requiera!
rm ./wp-mail.php			# ¿Se puede eliminar si no se van a enviar posts por correo electrónico? Sí
rm ./wp-signup.php			# Sólo si no se va a permitir alta autónoma de nuevos usuarios
#rm ./wp-trackback.php			# ¿Se puede eliminar si se desactiva? No. ¿Se puede vaciar (> wp-trackback.php)?
> ./wp-trackback.php
rm ./xmlrpc.php				# Se puede eliminar. No borrar si se va a usar Android App.
rm ./wp-content/plugins/hello.php
rm -r ./wp-content/plugins/akismet/

# Busco y reemplazo wp-activate.php por activate.php
find ./ -name \* -exec sed -i "s/wp-activate.php/activate.php/g" {} \;
# Y renombro el archivo
mv ./wp-activate.php activate.php

# Busco y reemplazo wp-blog-header.php por blog-header.php
find ./ -name \* -exec sed -i "s/wp-blog-header.php/blog-header.php/g" {} \;
# Y renombro el archivo
mv ./wp-blog-header.php blog-header.php

# Busco y reemplazo wp-comments-post.php por comments-post.php
find ./ -name \* -exec sed -i "s/wp-comments-post.php/comments-post.php/g" {} \;
# Y renombro el archivo
mv ./wp-comments-post.php comments-post.php

# Busco y reemplazo wp-config-sample.php por config-sample.php
find ./ -name \* -exec sed -i "s/wp-config-sample.php/config-sample.php/g" {} \;
# Y renombro el archivo
mv ./wp-config-sample.php config-sample.php

# Busco y reemplazo wp-config.php por config.php
find ./ -name \* -exec sed -i "s/wp-config.php/config.php/g" {} \;
# Y renombro el archivo (puede no existir)
mv ./wp-config.php config.php

# Busco y reemplazo wp-cron.php por cron.php
find ./ -name \* -exec sed -i "s/wp-cron.php/cron.php/g" {} \;
# Y renombro el archivo
mv ./wp-cron.php cron.php

# Busco y reemplazo wp-links-opml.php por links-opml.php
find ./ -name \* -exec sed -i "s/wp-links-opml.php/links-opml.php/g" {} \;
# Y renombro el archivo
mv ./wp-links-opml.php links-opml.php

# Busco y reemplazo wp-load.php por load.php
find ./ -name \* -exec sed -i "s/wp-load.php/load.php/g" {} \;
# Y renombro el archivo
mv ./wp-load.php load.php

# Busco y reemplazo wp-login.php por sign-in.php
find ./ -name \* -exec sed -i "s/wp-login.php/sign-in.php/g" {} \;
# Y renombro el archivo
mv ./wp-login.php sign-in.php

# Busco y reemplazo wp-mail.php por mail.php
find ./ -name \* -exec sed -i "s/wp-mail.php/mail.php/g" {} \;
# Y renombro el archivo
mv ./wp-mail.php mail.php

# Busco y reemplazo wp-settings.php por settings.php
find ./ -name \* -exec sed -i "s/wp-settings.php/settings.php/g" {} \;
# Y renombro el archivo
mv ./wp-settings.php settings.php

# Busco y reemplazo wp-signup.php por sign-up.php
find ./ -name \* -exec sed -i "s/wp-signup.php/sign-up.php/g" {} \;
# Y renombro el archivo
mv ./wp-signup.php sign-up.php

# Busco y reemplazo wp-trackback.php por trackback.php
find ./ -name \* -exec sed -i "s/wp-trackback.php/trackback.php/g" {} \;
# Y renombro el archivo
mv ./wp-trackback.php trackback.php

# Busco y reemplazo ./wp-includes/ por ./includes/
find ./ -name \* -exec sed -i "s/wp-includes/includes/g" {} \;
# Y renombro el directorio
mv ./wp-includes/ includes

# Busco y reemplazo ./wp-admin/ por ./admin/
find ./ -name \* -exec sed -i "s/wp-admin/admin/g" {} \;
# Y renombro el directorio
mv ./wp-admin/ admin
# TAMBIÉN algunos archivos...
mv ./includes/class-wp-admin-bar.php includes/class-admin-bar.php
mv ./admin/css/wp-admin.css admin/css/admin.css
mv ./admin/css/wp-admin.min.css admin/css/admin.min.css
mv ./admin/css/wp-admin-rtl.min.css admin/css/admin-rtl.min.css
mv ./admin/css/wp-admin-rtl.css admin/css/admin-rtl.css

# Busco y reemplazo ./wp-content/ por ./content/
find ./ -name \* -exec sed -i "s/wp-content/content/g" {} \;
# Y renombro el directorio
mv ./wp-content/ content
# TAMBIÉN un archivo...
mv ./includes/js/tinymce/skins/wordpress/wp-content.css includes/js/tinymce/skins/wordpress/content.css
# ATENCIÓN a w3-total-cache, contiene una carpeta llamada /wp-content/
mv ./content/plugins/w3-total-cache/wp-content/ content/plugins/w3-total-cache/content

# Acabé...
echo "Yá ta. Acabé :)"
