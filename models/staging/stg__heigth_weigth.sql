with 

source as (

    select * from {{ source('staging', 'heigth_weigth') }}

),

renamed as (

    select

    from source

)

select * from renamed
