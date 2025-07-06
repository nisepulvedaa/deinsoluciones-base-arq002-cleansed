INSERT INTO `dev_config_zone.process_params` (
    process_name,
    process_fn_name,
    params,
    arquetype_name,
    active
) VALUES (
    'process-{{nombre_proceso}}',
    'fn-insert-data',
    JSON '''
    [
        {"dataset_name": "{{dataset_cleansed_zone}}","table_name": "{{nombre_tabla_cleansed}}","zone_name": "CLEANSED"}
    ]
    ''',
    'workflow-arquetipo-ingesta-cleansed',
    TRUE
);
