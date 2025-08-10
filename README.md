# PL/SQL Project

This repository contains sample PL/SQL scripts for managing employee data.

## Structure

- `scripts/`: Core PL/SQL scripts for tables, packages, and procedures
- `tests/`: Test scripts for validating package functionality
- `rollback/`: Scripts to rollback package changes
- `Jenkinsfile`: CI/CD pipeline configuration
- `README.md`: Project overview

## Usage

Run scripts in order:
1. `create_tables.sql`
2. `create_package.sql`
3. `update_procedure.sql`
4. `test_package_spec.sql`

Use `rollback_package.sql` to remove the package if needed.
