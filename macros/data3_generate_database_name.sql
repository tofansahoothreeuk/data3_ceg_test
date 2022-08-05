-- Override project default database if target environment is not the default one

{% macro generate_database_name(custom_database_name=none, node=none) -%}

    {%- if env_var('DBT_TARGET_DATABASE') is none -%}

        {{ target.database }}

    {%- else -%}

        {{ env_var('DBT_TARGET_DATABASE') }}

    {%- endif -%}

{%- endmacro %}