-- Override schema name depending on target environment

{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}
        
        {%- if target.name|upper == 'DEFAULT' -%}
        
            {{ default_schema }}_{{ custom_schema_name | trim }}

        {%- elif target.name|upper == 'DEFAULTNOENV' -%}

            {{ default_schema }}_{{ custom_schema_name[4:] | trim }}

        {%- else -%}
        
            {{ custom_schema_name | trim }}
        
        {%- endif -%}

    {%- endif -%}

{%- endmacro %}