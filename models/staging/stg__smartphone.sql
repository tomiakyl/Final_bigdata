with 

source as (

    select * from {{ source('staging', 'smartphone') }}

),

renamed as (

    select

    from source

)

select * from renamed
