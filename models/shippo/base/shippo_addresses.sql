select

    object_id as id,

    name,
    company,

    street1,
    street2,
    street3,
    street_no,

    city,
    state,
    zip,
    country,

    email,
    phone,

    is_residential,

    object_owner as owner,
    lower(object_purpose) as purpose,
    lower(object_source) as source,
    lower(object_state) as object_state,

    object_created as created_at,
    object_updated as updated_at


from {{var('addresses_table')}}
