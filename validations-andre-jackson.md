<!-- As a developer, I have been tasked with creating a Rails application to store account information for a company. I want to ensure that only valid data can be saved in the database.

All tasks should have accompanying model specs.

✔️ Acceptance Criteria
The application data should be managed by a PostgreSQL database in a Rails application.
The model should be called Account with username, password, and email attributes.
Every account should require entries for username, password, and email.
Every username should be at least five (5) characters long.
Every username should be unique.
Every password should be at least six (6) characters long.
Every password should be unique.
The Account model has an associated model called Addresses where an account can have many addresses.
The Address model should have a street_number, street_name, city, state, and zip attributes. The
street_number and zip should be integers.
Every address should require entries for street_number, street_name, city, state, and zip.
✅


🏔 Stretch Goals

Every account password should have at least one number.


HINT: Read about custom validations in the Active Record validation docs.


Every street_number, street_name, and zip on the address model should be unique within an account.


HINT: Read about :scope in the Active Record validation docs.


Every street_number and zip should be integers.


HINT: Read about numericality in the Active Record validation docs.


If the street_number or zip code are not numbers there should be a custom error message that says "Please


input numbers only."


HINT: Read about message in the validation docs. -->
