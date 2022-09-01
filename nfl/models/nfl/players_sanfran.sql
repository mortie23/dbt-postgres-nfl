With sf as (
  SELECT
    player_name
    , passing_yards
    , passing_td
  FROM
    mortimer_nfl.player p
    left join mortimer_nfl.team_lookup t
  ON p.TEAM_ID = t.TEAM_ID
  WHERE 
    t.TEAM_SHORT='SF'
)
select
  *
FROM
  sf