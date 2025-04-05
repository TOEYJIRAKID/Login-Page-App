###### [(ระบบนี้ Transfer มาจาก Github Account เก่า --> https://github.com/TOEYJIRAKIT/PRG3-CRUD)](https://github.com/TOEYJIRAKIT/PRG3-CRUD)

## 🚀 **Project Name** :

Registration And Login - Registration And Login Form Mobile Application

## 📌 **Project Overview** :

This project is a Flutter-based mobile application that provides a user registration and login system. It allows new users to register with their personal details and existing users to securely log in. The system uses JSON Server as a mock backend for storing and retrieving user data. The application focuses on simplicity, clean UI.

## 🎯 **Objective** :

- Implement a registration form that stores user details in a backend.
- Create a secure login process with basic validation.
- Provide clear UI feedback for errors such as invalid credentials or missing fields.
- Use JSON Server for simulating backend APIs for login and registration.

## ✨ **Key Features** :

- **User Registration Form** – Allows users to sign up by providing name, email, password, and gender.
- **Secure Login** – Authenticates users using stored data from JSON Server.
- **Form Validation** – Checks for empty fields, invalid emails, and weak passwords.
- **Clean UI Design** – Simple and modern interface built with Flutter for smooth UX.

## 🛠 **Tech Stack** :

- **Frontend:** Dart, Flutter
- **Other:** JSON Server

## 📂 **GitHub Repository (Source Code)** :

- [https://github.com/TOEYJIRAKID/Login-Page-App](https://github.com/TOEYJIRAKID/Login-Page-App)

## ⚙️ **Installation & Setup** :

1. **Clone the repository**  
   ```bash
   git clone https://github.com/TOEYJIRAKID/Login-Page-App.git
   ```  
2. **Install json-server**  
   ```bash
   npm install json-server
   ```  
3. **Run the JSON Server**  
   ```bash
   npx json-server data.json --watch --port 3000
   ```  
4. **Open http://localhost:3000/ to view the json data.**

## 📃 Example JSON Data :

Here’s a sample of how registration and login data is structured in JSON format:

```json
{
  "users": [
    {
      "id": 1,
      "fullname": "Jirakit Aiadhet",
      "email": "a@test.com",
      "password": "1q2w3e4r",
      "gender": "Male"
    },
    {
      "id": 2,
      "fullname": "test",
      "email": "b@test.com",
      "password": "1a2w3e4rs",
      "gender": "Femal"
    }
  ]
}
```

## 📽️ **Project Preview** :

![login-page](https://github.com/user-attachments/assets/25135f07-b634-4342-98de-197acb56d3a9)
