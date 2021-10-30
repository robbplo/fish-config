function opendb
   [ ! -f .env ] && { echo "No .env file found."; exit 1; }

   set DB_CONNECTION (grep DB_CONNECTION .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   set DB_HOST (grep DB_HOST .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   set DB_PORT (grep DB_PORT .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   set DB_DATABASE (grep DB_DATABASE .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   set DB_USERNAME (grep DB_USERNAME .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)
   set DB_PASSWORD (grep DB_PASSWORD .env | grep -v -e '^\s*#' | cut -d '=' -f 2-)

   set DB_URL "$DB_CONNECTION://$DB_USERNAME:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_DATABASE"

   echo "Opening $DB_URL"
   open $DB_URL
end