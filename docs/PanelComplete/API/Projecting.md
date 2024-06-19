---
layout: post
title: Projecting API
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
