# 🎬 IMDB Movies SQL Analysis

This project explores the **IMDB Movies dataset** using SQL queries on the `project_movie_database`. It demonstrates how to analyze movies and directors by joining the `Movies` and `Directors` tables, and answering key analytical questions.

---

## 🔑 Database Details
- **Host:** 18.136.157.135  
- **Domain:** projects.datamites.com  
- **DB Name:** project_movie_database  
- **Username:** dm_team10  
- **Password:** DM!$!Team!92@05!156&  

---

## 📂 Tables Used
### Directors
- `ID` → Unique ID of the Director  
- `Name` → Name of the Director  
- `Gender` → Gender (0/2 = Male, 1 = Female)  
- `Department` → Department of the Director  

### Movies
- `ID` → Unique ID for Movies  
- `Original Title` → Movie name  
- `Budget` → Budget of the movie  
- `Revenue` → Revenue collected  
- `Popularity` → Popularity score  
- `Release Date` → Release date  
- `Vote Average` → Average IMDB rating  
- `Vote Count` → Number of votes  
- `Director ID` → Foreign key linked to Directors  

---

## 📝 Problem Queries & SQL Examples

### 1. Get all data about movies
```sql
SELECT * FROM Movies;
