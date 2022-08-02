-- Staging conforms source data to company standards

select id,
    pay_band
from {{ source('ato_oss_dataops','ato_lookup_src' )}}