# Agenda
Flutter app for student and teacher. Create and see homeworks for a classroom.

# Features 

- Flutter with Firebase
- Clean code : BLoC pattern + DDD architecure

## App:
- Login / Sign up using email or Google account.
- Private screen for creating homeworks (Only for  users who have the rights of creating a homework)
- After the creation, the homework is added into firebase
- You can join one or many documens to a homework (Image, PDF...), these documents are stored in firebase storage.
- All homeworks are fetched from the database

## Web Admin Console

- See all users
- Assign role to a user
- Add rights to role
- Create role, by adding some rights

# Screenshots
## App homepage for student
![homepage](https://github.com/bdeguigne/Agenda/blob/master/screenshots/app-home_page.png)
![calendar](https://github.com/bdeguigne/Agenda/blob/master/screenshots/app-calendar.png)

## App homepage for teacher
![create homework](https://github.com/bdeguigne/Agenda/blob/master/screenshots/app-create_homework.jpg)

## Web admin console
Create and edit role 
![roles](https://github.com/bdeguigne/Agenda/blob/master/screenshots/web-admin-roles.png)
Assign role to a user
![assign role](https://github.com/bdeguigne/Agenda/blob/master/screenshots/web-admin-assign_role.png)
