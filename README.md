# 🎮 GameFinder API

REST API developed with **Spring Boot** for the GameFinder project — a game discovery platform where users can browse games by genre, platform, and manage a personal wishlist.


---

## 🛠️ Tech Stack

| Technology | Version |
|---|---|
| Java | 17 |
| Spring Boot | 3.2.5 |
| Spring Web | — |
| Spring Data JPA | — |
| Spring HATEOAS | — |
| H2 Database | In-memory |
| Maven | — |

---

## 📐 Data Model

```
Game
├── Long id
├── String title
├── String description
├── LocalDate releaseDate
├── Double rating
├── Genre genre         → has a Genre
├── Platform platform   → has a Platform
├── String coverUrl
├── String backdropUrl
└── boolean inWishlist

Genre
├── Long id
└── String name

Platform
├── Long id
└── String name
```

---


The H2 console is available at `http://localhost:8080/h2-console`  
(JDBC URL: `jdbc:h2:mem:gamefinderdb`, user: `sa`, no password).

---

## 📡 Endpoints

### Games

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/games` | List all games (paginated, sorted by title) |
| `GET` | `/games/{id}` | Get full game details with HATEOAS links |
| `GET` | `/games/genres/{genreId}` | List games by genre |
| `GET` | `/games/platforms/{platformId}` | List games by platform |
| `GET` | `/games/wishlist` | List all games in the wishlist |
| `GET` | `/games/wishlist/{id}` | Toggle a game's wishlist status |

---

## 🔗 HATEOAS Links

The `GET /games/{id}` endpoint returns hypermedia links alongside game data:

```json
{
  "id": 1,
  "title": "The Legend of Zelda: Tears of the Kingdom",
  "description": "An epic adventure...",
  "releaseDate": "2023-05-12",
  "rating": 9.5,
  "genre": { "id": 2, "name": "Adventure" },
  "platform": { "id": 3, "name": "Nintendo Switch" },
  "coverUrl": "https://...",
  "backdropUrl": "https://...",
  "inWishlist": true,
  "_links": {
    "self": {
      "href": "http://localhost:8080/games/1",
      "title": "The Legend of Zelda: Tears of the Kingdom"
    },
    "same-genre": {
      "href": "http://localhost:8080/games/genres/2",
      "title": "Games in Adventure genre"
    },
    "same-platform": {
      "href": "http://localhost:8080/games/platforms/3",
      "title": "Games on Nintendo Switch"
    },
    "remove-from-wishlist": {
      "href": "http://localhost:8080/games/wishlist/1",
      "title": "Remove The Legend of Zelda: Tears of the Kingdom from wishlist",
      "type": "GET"
    }
  }
}
```

### Pagination — `GET /games`

```json
{
  "_embedded": {
    "gameList": [
      { "id": 20, "title": "Age of Empires IV" }
    ]
  },
  "_links": {
    "first": { "href": "http://localhost:8080/games?page=0&size=10&sort=title,asc" },
    "self":  { "href": "http://localhost:8080/games?page=0&size=10&sort=title,asc" },
    "next":  { "href": "http://localhost:8080/games?page=1&size=10&sort=title,asc" },
    "last":  { "href": "http://localhost:8080/games?page=1&size=10&sort=title,asc" }
  },
  "page": {
    "size": 10,
    "totalElements": 20,
    "totalPages": 2,
    "number": 0
  }
}
```

---

## 📁 Project Structure

```
src/
└── main/
    ├── java/com/gamefinder/api/
    │   ├── ApiApplication.java
    │   ├── controller/
    │   │   └── GameController.java
    │   ├── dto/
    │   │   ├── GameDetailDTO.java
    │   │   ├── GameSummaryDTO.java
    │   │   ├── GenreDTO.java
    │   │   └── PlatformDTO.java
    │   ├── entity/
    │   │   ├── Game.java
    │   │   ├── Genre.java
    │   │   └── Platform.java
    │   ├── repository/
    │   │   ├── GameRepository.java
    │   │   ├── GenreRepository.java
    │   │   └── PlatformRepository.java
    │   └── service/
    │       ├── GameMapper.java
    │       └── GameService.java
    └── resources/
        ├── application.properties
        └── data.sql
```

---

## 📄 Integrantes:

Vitória Valentina Maglio RM 563509
Marina Magalhães RM 561786

