#!/usr/bin/env bash
set -e

cd /var/www/html

if [ ! -f .env ]; then
  cp .env.example .env
fi

if [ ! -d vendor ] || [ ! -f vendor/autoload.php ]; then
  if [ -f composer.lock ]; then
    composer install --no-interaction --prefer-dist --no-progress || composer update --no-interaction --prefer-dist --no-progress
  else
    composer update --no-interaction --prefer-dist --no-progress
  fi
fi

if ! grep -q '^APP_KEY=base64' .env; then
  php artisan key:generate --force
fi

echo "Esperando a MySQL en ${DB_HOST:-db}:${DB_PORT:-3306}..."
for i in $(seq 1 60); do
  if php -r "new PDO('mysql:host=${DB_HOST:-db};port=${DB_PORT:-3306};dbname=${DB_DATABASE:-torneo}', '${DB_USERNAME:-deporco}', '${DB_PASSWORD:-deporco}');" >/dev/null 2>&1; then
    echo "MySQL listo."
    break
  fi
  sleep 2
done

mkdir -p storage/framework/{sessions,views,cache} storage/logs bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache || true
chmod -R ug+rwx storage bootstrap/cache || true

if [ "${DEPORCO_AUTO_MIGRATE:-true}" = "true" ]; then
  if [ ! -f storage/.deporco-migrated ]; then
    echo "Ejecutando migraciones y seeders iniciales..."
    php artisan migrate --force
    php artisan db:seed --force || true
    touch storage/.deporco-migrated
  else
    php artisan migrate --force || true
  fi
fi

php artisan config:clear || true
php artisan view:clear || true
php artisan route:clear || true

exec "$@"
