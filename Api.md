# API

## Users
- GET /users/{id}
- POST /users

## Books
- GET /books?keyword=
- GET /books/{id}
- POST /books

## Rents
- POST /rents
- POST /rents/{id}/return
- GET /users/{id}/rents

## Lectures / Documents
- GET /lectures
- POST /documents

## Lockers / Assign
- GET /lockers
- POST /assign

```mermaid
flowchart LR
A[POST /rents] --> B[Service.borrow]
B --> C[BookRepository.findById]
B --> D[RentRepository.save]
B --> E[BookRepository.save]
```