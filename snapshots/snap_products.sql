{% snapshot snap_products %}

{{
    config(
        target_database='analystics',
        target_schema='dbt_cedricdube1',
        unique='id',

        strategy='timestamp',
        updated_at='updated_at',
    )
}}

select * from {{ source('jaffle_shop_ext', 'products') }}

{% endsnapshot %}