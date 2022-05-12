
/*
    Post season games
*/

{{ config(materialized='table') }}

with postSeason as (

    select
        g.*
    from
        mortimer_nfl.game g
        left join mortimer_nfl.game_type gt
    on
        g.game_type_id = gt.game_type_id
    where
        gt.game_type = 'PST'

)

select 
    *
from 
    postSeason

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
