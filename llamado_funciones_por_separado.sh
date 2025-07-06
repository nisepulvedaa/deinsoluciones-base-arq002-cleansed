curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-insert-data \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "process_name": "process-instrumentos-derivados-slim-nico",
  "process_fn_name": "fn-insert-data",
  "arquetype_name": "workflow-arquetipo-ingesta-cleansed"
}'



curl -X POST https://us-east4-deinsoluciones-serverless.cloudfunctions.net/fn-create-table-cleansed \
  -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  -d '{
  "fn-create-table-cleansed": "process-instrumentos-derivados-slim-nico",
  "ejecutar_sat": true,
  "ejecutar_hub": true,
  "ejecutar_link": false
}'

