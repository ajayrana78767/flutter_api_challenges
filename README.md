# Flutter API Challenges

A collection of practice projects for mastering API integration in Flutter using MVVM architecture.

---

## 📅 Day 1 – Basic API with List

**Goal:**  
Fetch a list of posts from a public API and display them using `ListView`.

### 🔗 API Used
[https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)

### 📁 Folder Structure (MVVM)
lib/
├── models/ # Post model
├── services/ # API call with Dio
├── viewmodels/ # State management using Provider
├── views/ # PostListScreen UI
├── widgets/ # Reusable PostTile widget
└── main.dart # App entry point


### 🧩 Features Implemented
- Created `Post` model with `fromJson()` and `toJson()`
- Called API using `Dio` in a separate `PostServices` class
- Managed state in `PostViewmodel` using `Provider`
- Displayed posts in a scrollable `ListView`
- Clean MVVM structure

---

## 🔧 Tech Stack
- Flutter
- Dio for API calls
- Provider for state management
- MVVM architecture

---

## 🚀 Coming Next
- Day 2 – Nested List Inside List
- Day 3 – GridView Display from API
- Day 4 – Deeply Nested JSON
- Day 5 – Dynamic JSON with Unknown Structure
- Day 6 – Pagination
- Day 7 – Interview Simulation

