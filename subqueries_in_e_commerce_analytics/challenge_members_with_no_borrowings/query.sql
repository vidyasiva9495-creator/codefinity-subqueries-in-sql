SELECT name
FROM members
WHERE member_id NOT IN
    (
    SELECT member_id
    FROM borrowings
    );
