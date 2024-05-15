with 

source as (

    select * from {{ source('staging', 'global_plastic_prod') }}

),

renamed as (

    select
        entity,
        code,
        year,
        annual_plastic_production_between_1950_and_2019

    from source

)

select * from renamed
