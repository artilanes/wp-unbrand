# wp-unbrand.sh

### Script that modifies the Wordpress installation paths to improve security.

## DEPRECATED

We are currently using in wp-config.php:

```php
/* Moving wp-content folder */
define('WP_CONTENT_DIR', ABSPATH . 'content');
define('WP_CONTENT_URL', 'https://' . $_SERVER['HTTP_HOST'] . '/content');
```
