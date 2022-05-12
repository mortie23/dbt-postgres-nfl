With passing as (
  SELECT
    player_name
    , passing_yards
    , passing_td
  FROM
    mortimer_nfl.player
  WHERE 
    field_position = 'QB'
    AND passing_yards > 0
)
select
  *
FROM
  passing