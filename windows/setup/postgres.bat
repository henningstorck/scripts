@echo off

scoop install main/postgresql

pg_ctl register -N PostgreSQL
sc start PostgreSQL
