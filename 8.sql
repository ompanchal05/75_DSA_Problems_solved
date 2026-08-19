SELECT
    a.agent_id,
    a.agent_name,
    COUNT(c.call_id) AS total_calls,
    AVG(c.duration_sec) AS avg_duration_sec,
    ROUND(
        100.0 * SUM(CASE WHEN c.status = 'answered' THEN 1 ELSE 0 END)
        / COUNT(c.call_id),
        2
    ) AS answered_percentage
FROM agents a
LEFT JOIN calls c
    ON a.agent_id = c.agent_id
    AND c.call_date >= CURRENT_DATE - INTERVAL '30 days'
WHERE a.is_active = TRUE
GROUP BY
    a.agent_id,
    a.agent_name
ORDER BY total_calls DESC;