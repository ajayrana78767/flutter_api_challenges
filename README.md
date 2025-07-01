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


## 📅 Day 2 – Nested List Inside List (Product API)

**Goal:**  
Fetch product data containing nested structures like dimensions, reviews, and images.

### 🔗 API Used
[https://dummyjson.com/products/category/smartphones](https://dummyjson.com/products/category/smartphones)

### ✅ Features Implemented So Far
- Created `Product` model with essential fields
- Built `ProductService` to fetch product data
- Developed `ProductViewmodel` for managing state
- Displayed products in a responsive `GridView` showing image and title only

### 🧩 Upcoming Enhancements (Day 3+)
- Add product details like price, rating, and reviews
- Navigate to Product Detail screen on tap
- Show nested reviews in detail screen
- Use tabs or collapsible sections for nested content

---


## 🔧 Tech Stack
- Flutter
- Dio for API calls
- Provider for state management
- cached_network_image for image caching
- MVVM architecture

---

## 🚀 Coming Up
- ✅ Day 1 – Basic API with List
- ✅ Day 2 – Nested List Inside List
- 🔜 Day 3 – GridView Display from API
- 🔜 Day 4 – Deeply Nested JSON
- 🔜 Day 5 – Dynamic JSON with Unknown Structure
- 🔜 Day 6 – Pagination
- 🔜 Day 7 – Interview Simulation

