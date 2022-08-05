-- Override project default database if target environment is not the default one

{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- set default_database = env_var('DBT_TARGET_DATABASE') -%}
    {%- if custom_database_name is none -%}

        {{ default_database }}

    {%- else -%}

        {{ custom_database_name | trim }}

    {%- endif -%}

{%- endmacro %}