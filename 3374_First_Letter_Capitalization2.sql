-- Write your PostgreSQL query statement below
select
    content_id,
    content_text as original_text,
    initcap(content_text) as converted_text
from user_content;

-- learnt about initcap