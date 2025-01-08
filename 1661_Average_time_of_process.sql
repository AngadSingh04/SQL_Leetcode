select 
    machine_id, 
    round(sum(end_time - start_time)::numeric / count(distinct(process_id)), 3) as processing_time
from (
    select machine_id, process_id,
        sum(case when activity_type = 'end' then timestamp else 0 end) as end_time,
        sum(case when activity_type = 'start' then timestamp else 0 end) as start_time
    from activity 
    group by machine_id, process_id
) 
group by machine_id;
