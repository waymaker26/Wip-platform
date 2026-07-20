
create extension if not exists "uuid-ossp";
create table if not exists properties (
 id uuid primary key default uuid_generate_v4(),
 address text not null, city text not null, state text default 'IN', zip text not null,
 parcel_number text unique, owner_name text, property_type text, strategy text,
 stage text default 'New Lead', overall_score integer default 0,
 flip_score integer default 0, rental_score integer default 0,
 development_score integer default 0, listing_score integer default 0,
 assessed_value numeric default 0, estimated_purchase numeric default 0,
 project_cost numeric default 0, estimated_arv numeric default 0,
 projected_profit numeric default 0, cash_required numeric default 0,
 years_owned integer default 0, absentee_owner boolean default false,
 next_action text, follow_up_date date, notes text,
 created_at timestamptz default now(), updated_at timestamptz default now()
);
alter table properties enable row level security;
