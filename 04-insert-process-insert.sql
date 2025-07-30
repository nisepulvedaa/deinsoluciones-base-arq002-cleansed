--SAT
INSERT INTO `dev_config_zone.process_insert` (
    process_name, 
    table_type, 
    insert_statement, 
    is_active
) VALUES (
    'process-{{nombre_proceso}}',
    'satelite',
    "{{insert_satelite}}",
    TRUE
);


--HUB
INSERT INTO `dev_config_zone.process_insert` (
    process_name, 
    table_type, 
    insert_statement, 
    is_active
) VALUES (
    'process-{{nombre_proceso}}',
    'hub',
    "{{insert_hub}}",
    TRUE
);


--LINK
INSERT INTO `dev_config_zone.process_insert` (
    process_name, 
    table_type, 
    insert_statement, 
    is_active
) VALUES (
    'process-{{nombre_proceso}}',
    'link',
    "{{insert_link}}",
    TRUE
);
