# 👋 Hello API – FastAPI Challenge

Welcome 👋

This project is a **partially implemented API service** built using:

* Python
* FastAPI

Your task is to complete the API so that it exposes a working endpoint according to the requirements below.

---

# 📦 Project Overview

The project represents a **minimal API service**.

Currently, the application structure exists but the main endpoint logic is incomplete.

Your task is to implement the `/hello` endpoint correctly.

---

# 🚨 Your Task

You must implement the following endpoint.

## 1️⃣ Implement `/hello` Endpoint

Create an API endpoint:

```
GET /hello
```

The endpoint must return the following JSON response:

```
{
  "message": "hello world"
}
```

### Requirements

* Use **FastAPI**
* Response must be **valid JSON**
* HTTP status must be **200**
* Response structure must exactly match the specification

---

# 📁 Project Structure

```
app/
 └ main.py
```

You will implement the endpoint inside:

```
app/main.py
```

---

# ▶️ Running the Application

Install dependencies:

```
pip install -r requirements.txt
```

Start the server:

```
uvicorn app.main:app --reload
```

Server will start at:

```
http://localhost:8000
```

You can test the endpoint using:

```
http://localhost:8000/hello
```

---

# 🧪 Example Response

A successful response should return:

```
{
  "message": "hello world"
}
```

---

# 🧠 Constraints

* Do not modify project structure unless necessary
* Do not introduce additional frameworks
* Keep the implementation simple and clean

---

# 🧪 Edge Cases

Ensure the endpoint:

* Always returns valid JSON
* Does not crash if called multiple times
* Returns consistent responses

---

# 📊 Evaluation Criteria

Your submission will be evaluated based on:

### Code Quality

* Clean and readable code
* Proper naming conventions

### Python Knowledge

* Correct FastAPI usage
* Correct endpoint definition

### API Design

* Proper HTTP method usage
* Correct JSON response format

---

# 🚀 Goal

This challenge evaluates:

* Basic Python API development skills
* Understanding of FastAPI
* Ability to follow specifications precisely

Take your time and write clean code.

Good luck 🚀
