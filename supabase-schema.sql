create extension if not exists pgcrypto;
create table if not exists public.profiles(id uuid primary key references auth.users(id) on delete cascade, full_name text, role text not null default 'member' check(role in ('admin','member')), created_at timestamptz default now());
create table if not exists public.products(id uuid primary key default gen_random_uuid(),name text not null,category text not null,price integer not null,description text,image_url text,is_active boolean default true,created_at timestamptz default now());
create table if not exists public.orders(id uuid primary key default gen_random_uuid(),user_id uuid references auth.users(id),buyer_name text,buyer_phone text,items jsonb,total integer,payment_status text default 'pending',created_at timestamptz default now());
alter table public.profiles enable row level security;alter table public.products enable row level security;alter table public.orders enable row level security;
create policy "public products" on public.products for select using(is_active=true);
create policy "own orders" on public.orders for select to authenticated using(user_id=auth.uid());
create policy "create orders" on public.orders for insert to authenticated with check(user_id=auth.uid());
-- Buat user admin lalu jalankan: update public.profiles set role='admin' where id='UUID_ADMIN';
