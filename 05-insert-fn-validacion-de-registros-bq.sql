INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name, 
    params, 
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-validacion-de-registros-bq',
    JSON '''
    [
        {"dataset_id": "{{dataset_cleansed_zone}}","table_id": "{{nombre_tabla_cleansed}}", "fecha_columna": "{{campo_fecha_tabla_cleansed}}", "fecha_param": "{{fecha_ejecucion}}", "periodicidad": "{{periodicidad}}"}
    ]
    ''',
    'workflow-arquetipo-ingesta-cleansed',
    TRUE
);
