# 💾 SimpleUserDefaultsApp

An iOS app demonstrating **local data persistence** using `UserDefaults`, with input validation and alert-based user feedback.

---

## 📱 Project Overview

This app allows the user to enter their **name**, **email**, and **age**, then save the data locally using `UserDefaults`.  
It includes validation for each input field and displays custom alerts based on the user's actions.

---

## 🛠️ Technologies Used

- Swift  
- UIKit  
- UserDefaults  
- UIAlertController  
- IBOutlets & IBActions  
- Local data persistence

---

## ✨ Features

- 📝 Input fields for name, email, and age
- ✅ Validation before saving:
  - Name must not be empty
  - Email must contain "@" and "."
  - Age must be a valid number
- 💾 Save user data locally using `UserDefaults`
- 🧹 Clear saved data with a "Delete" button
- 🔁 Auto-load saved data on app launch
- 🔔 Custom alert messages for warnings and confirmations

---

## 🚀 How It Works

- On **app launch**, data is auto-loaded from `UserDefaults`.
- When you press **Save**, it:
  - Validates all inputs
  - Saves data if valid
  - Shows success alert
- When you press **Delete**, it:
  - Clears `UserDefaults`
  - Empties all input fields
  - Shows confirmation alert

---

## 👨‍💻 Developed By

**Beshoy Atef**  
📆 July 2025

---

> This project is ideal for beginners learning iOS local persistence and input validation using UIKit.

