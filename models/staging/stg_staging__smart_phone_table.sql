with 

source as (

    select * from {{ source('staging', 'smart_phone_table') }}

),

renamed as (

    select
        brand_name,
        model,
        price,
        rating,
        has_5g,
        has_nfc,
        has_ir_blaster,
        processor_name,
        processor_brand,
        num_cores,
        processor_speed,
        battery_capacity,
        fast_charging,
        ram_capacity,
        internal_memory,
        refresh_rate,
        resolution,
        num_rear_cameras,
        num_front_cameras,
        os,
        primary_camera_rear,
        primary_camera_front,
        extended_memory

    from source

)

select * from renamed
