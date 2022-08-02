-- Staging conforms source data to company standards

select id,
    band_id,
    job_desc
from {{ source('ato_oss_dataops','ato_dataops_src' )}}
where job_desc is not null