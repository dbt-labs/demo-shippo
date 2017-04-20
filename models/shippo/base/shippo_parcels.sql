select

    object_id as id,

    distance_unit,
    height::float,
    length::float,
    width::float,
    mass_unit,
    weight::float,

    object_owner as owner,
    template,
    lower(object_state) as state,

    object_created as created_at,
    object_updated as updated_at

from {{var('parcels_table')}}
