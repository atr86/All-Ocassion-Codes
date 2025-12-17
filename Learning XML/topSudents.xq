<topStudents>
{
    for $s in /students/student
    let $m := $s/marks
    where $m >= 85
    order by $m descending
    return
        <student>
            <name>{ $s/name/text() }</name>
            <marks>{ $m }</marks>
        </student>
}
</topStudents>
