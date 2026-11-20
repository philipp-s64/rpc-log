SELECT relname, pg_size_pretty(pg_total_relation_size(relid))
FROM pg_catalog.pg_statio_user_tables
ORDER BY pg_total_relation_size(relid) DESC
LIMIT 20;

-- Cache hit ratio
SELECT sum(blks_hit) / nullif(sum(blks_hit + blks_read), 0) AS ratio FROM pg_stat_database;

