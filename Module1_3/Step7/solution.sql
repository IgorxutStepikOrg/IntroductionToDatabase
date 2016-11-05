SELECT
    COUNT(*),
    SUM(budget),
    AVG(DATEDIFF(project_finish, project_start))
FROM
    project;
