select

    object_id as id,

    address_from as address_from_id,
    address_return as address_return_id,
    address_to as address_to_id,
    parcel as parcel_id,

    insurance_amount::float,
    insurance_currency,

    rates_url,
    return_of,
    submission_date,
    lower(submission_type) as submission_type,
    customs_declaration,


    object_owner as owner,
    lower(object_state) as state,
    lower(object_purpose) as purpose,
    lower(object_status) as status,


    object_created as created_at,
    object_updated as updated_at


from {{var('shipments_table')}}
