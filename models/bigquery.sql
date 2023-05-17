with projectid as (

    select
        id,
        name

    from jira.project

),

projectdescription as (

    select
        project as id 
        description

    from jira.issues

),


final as (

    select
        projectid.id,
        projectdescription.description

    from projectid

    left join projectdescription using (id)

)

select * from final