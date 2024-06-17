---
layout: default
title: API Documentation
---

* TOC
{:toc}

# API Documentation

## ProjectViewSet

### Retrieve Project by Project Number
Retrieve a detailed project by its project number.

- **URL**: `/api/projects/{project_number}/`
- **Method**: `GET`
- **Params**:
    - `project_number` (required): The unique number identifying the project.
- **Responses**:
    - `200 OK`: Returns the project details.
    - `404 Not Found`: If the project with the given project number does not exist.

### List Projects
List all projects or filter projects based on query parameters.

- **URL**: `/api/projects/`
- **Method**: `GET`
- **Query Params**:
    - `fm` (optional): Filters projects with unscheduled releases.
    - `active_list` (optional): Filters active projects.
- **Responses**:
    - `200 OK`: Returns a list of projects.

### Retrieve Active Projects
Retrieve active projects with related data.

- **URL**: `/api/projects/`
- **Method**: `GET`
- **Query Params**:
    - `active_list` (optional): Filters active projects.
- **Responses**:
    - `200 OK`: Returns a list of active projects.

## ReleaseViewSet

### List Releases
List all releases or filter releases based on query parameters.

- **URL**: `/api/releases/`
- **Method**: `GET`
- **Query Params**:
    - `active_list` (optional): Filters active project releases.
    - `get_details` (optional): Filters specific release details.
- **Responses**:
    - `200 OK`: Returns a list of releases.

### Retrieve Release Details
Retrieve detailed information about a specific release.

- **URL**: `/api/releases/{id}/get_details/`
- **Method**: `GET`
- **Params**:
    - `id` (required): The unique identifier of the release.
- **Responses**:
    - `200 OK`: Returns the release details.

### Update Release Details
Update detailed information about a specific release.

- **URL**: `/api/releases/{id}/set_details/`
- **Method**: `POST`
- **Params**:
    - `id` (required): The unique identifier of the release.
- **Body**: JSON object with release details.
- **Responses**:
    - `200 OK`: Returns the updated release details.
    - `400 Bad Request`: If the provided data is invalid.

## Firebase View

### Save Data to Firebase
Receive JSON from Firebase and save it to a file.

- **URL**: `/api/firebase/`
- **Method**: `POST`
- **Body**: JSON object with data to be saved.
- **Responses**:
    - `201 Created`: Data saved successfully.
    - `500 Internal Server Error`: If there is an error saving the data.

### Retrieve Data from Firebase
Retrieve data saved from Firebase.

- **URL**: `/api/firebase/`
- **Method**: `GET`
- **Responses**:
    - `200 OK`: Returns each line from the saved file as JSON.
    - `500 Internal Server Error`: If there is an error retrieving the data.
