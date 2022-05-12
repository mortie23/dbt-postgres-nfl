
-- Use the `ref` function to select from other models

select 
  g.*
  , hteam.team as home_team_name
  , ateam.team as away_team_name
from {{ ref('postseason') }} g
  left join mortimer_nfl.team_lookup hteam
on
  g.home_team_id = hteam.team_id
  left join mortimer_nfl.team_lookup ateam
on
  g.away_team_id = ateam.team_id
where 
  hteam.team = 'Patriots'
  or ateam.team = 'Patriots'
