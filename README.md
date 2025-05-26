# 🌍 SampleSQLDatabase: Fictional Worlds

This project is a showcase of a normalized SQL database built to manage data related to fictional fantasy worlds. It models relationships between worlds, cultures, species, characters, artifacts, and deities—ideal for storytelling, world-building, or RPG campaign management.

---

## 🧱 Database Overview

### 🔹 Key Entities

- **Worlds** – Names, terrain, and magical systems
- **Cultures** – Languages, religions, and their worlds
- **Species** – Biological traits and world origins
- **Characters** – Roles, cultural and species backgrounds
- **Artifacts** – Magical objects linked to characters
- **Deities** – Mythical figures associated with worlds

---

## 🔗 Entity Relationships

- Worlds → Cultures (1-to-many)
- Worlds → Species (1-to-many)
- Worlds → Deities (1-to-many)
- Cultures → Characters (1-to-many)
- Species → Characters (1-to-many)
- Characters → Artifacts (1-to-many)

![ERD](docs/erd.png) <!-- Optional if you generate an ERD later -->

---

## 🛠️ Tech Stack

- **MariaDB / MySQL**
- **HeidiSQL** (for development and testing)
- **SQL** (DDL, DML, Views, Joins, Subqueries)

---

## 📁 Project Structure

