# Recipe Saver

## Table of Contents

1. [Overview](#overview)
2. [Product Spec](#product-spec)
3. [Wireframes](#wireframes)
4. [Schema](#schema)

---

## Overview

### Description

Recipe Saver is a minimalist iOS app built with SwiftUI that allows users to upload, save, and explore recipes. Users can share their favorite dishes, browse others' creations, and curate a personalized list of go-to meals. It emphasizes simplicity, clean design, and social interaction.

### App Evaluation

**Category:** Lifestyle / Food & Drink  
**Mobile:** Built natively for iOS with SwiftUI  
**Story:** Many users struggle to keep track of recipes and want an easy way to save, share, and discover cooking ideas.  
**Market:** Anyone who enjoys cooking or is looking for inspiration in the kitchen  
**Habit:** Encourages regular use for meal planning, cooking, and sharing  
**Scope:** Focused MVP includes upload, view, favorite, and basic interaction. Advanced social and filtering features can be added later.

---

## Product Spec

### 1. User Stories (Required and Optional)

#### Required Must-have Stories
- User can upload a recipe with title, ingredients, steps, and image
- User can view a feed of public/shared recipes
- User can favorite a recipe
- User can view a list of their favorite recipes
- User can see recipe details in a clean layout

#### Optional Nice-to-have Stories
- User can like/comment on recipes
- User can follow other users
- Recipes can be filtered by category or ingredients
- User receives personalized recipe recommendations
- Integration with external APIs (e.g., Spoonacular for ingredients/nutrition)

---

### 2. Screen Archetypes

- **Home Feed**
  - User sees list of shared recipes
- **Upload Screen**
  - User creates and submits a new recipe
- **Favorites Screen**
  - User views saved favorite recipes
- **Recipe Detail Screen**
  - User sees full recipe with image, ingredients, and steps
- **Profile Screen (Optional)**
  - User sees their uploaded recipes and settings

---

### 3. Navigation

#### Tab Navigation (Tab to Screen)
- Home
- Upload
- Favorites

#### Flow Navigation (Screen to Screen)
- Home → Recipe Detail
- Favorites → Recipe Detail
- Upload → Confirm Submission
- Home/Profile → Other User's Profile → Their Recipes

---

## Wireframes

<img src="https://pdf.ac/1EpKoZ" width=600>`

<div>
    <a href="https://www.loom.com/share/9e37f81ad7f547c69ec84f7b7fd25038">
    </a>
    <a href="https://www.loom.com/share/9e37f81ad7f547c69ec84f7b7fd25038">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/9e37f81ad7f547c69ec84f7b7fd25038-7f9de765c6081e5b-full-play.gif">
    </a>
  </div>


**[BONUS] Digital Wireframes & Mockups**  
_(Optional - Include Figma or design files if created)_

**[BONUS] Interactive Prototype**  
_(Optional - Include a prototype link if available)_

---

## Schema

> _This section will be completed in Unit 9_

### Models

#### Recipe
| Property      | Type     | Description                        |
|---------------|----------|------------------------------------|
| id            | String   | Unique ID for the recipe           |
| author        | String   | User who posted the recipe         |
| title         | String   | Title of the recipe                |
| ingredients   | [String] | List of ingredients                |
| steps         | [String] | Step-by-step cooking instructions  |
| imageUrl      | String   | Optional image of the dish         |
| favoritedBy   | [String] | List of user IDs who favorited     |

#### User
| Property      | Type     | Description                        |
|---------------|----------|------------------------------------|
| id            | String   | Unique ID for user                 |
| username      | String   | Display name                       |
| email         | String   | User email                         |
| profileImage  | String   | URL to profile picture             |
| favorites     | [String] | List of favorited recipe IDs       |

---

### Networking

- **GET** /recipes  
  Fetch all shared recipes for the home feed

- **POST** /recipes  
  Upload a new recipe

- **GET** /recipes/{id}  
  Get full details of a specific recipe

- **POST** /users/{userId}/favorites  
  Add a recipe to user’s favorites

- **GET** /users/{userId}/favorites  
  Fetch list of user’s favorited recipes

- **[OPTIONAL]** Use external API (e.g. Spoonacular) to get nutrition info by ingredients

