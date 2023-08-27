# big data

Repo created to store code from course CPE 325 (Big data), King Mongkut's University of Technology Thonburi. Each folder contains `Exercise.ipynb` file which is my solution to the corresponding lab. Labs related to machine learning are excluded from the repo for now

## Tools and technologies
<img width=700 src="https://user-images.githubusercontent.com/57994731/157178734-f691b356-28fb-4976-b27c-4d572f46546d.png" alt="tech stack diagram" />

## Walk through
- [lab 1](https://github.com/ppkgtmm/big-data/blob/main/Lecture%201-2%20-%20Numpy%2C%20Pandas%2C%20Matplotlib/Exercise.ipynb) find answers by exploring flight cancellation and delays dataset which contain 5.8 M records
- [lab 2](https://github.com/ppkgtmm/big-data/blob/main/Lecture%202%20-%20Data%20Preparation/Exercise.ipynb) prepare user movie ratings data into suitable form for further analysis e.g. create user profile matrix
- [lab 3](https://github.com/ppkgtmm/big-data/blob/main/Lecture%203%20-%20Data%20Exploration/Exercise.ipynb) explore distribution and correlation in real world forest dataset collected by US Forest Service
- [lab 6](https://github.com/ppkgtmm/big-data/blob/main/Lecture%206%20-%20Hadoop%20MapReduce/Exercise.ipynb) perform map reduce on Sherlock Holmes book to count unigrams and bigrams after text cleaning
- [lab 7](https://github.com/ppkgtmm/big-data/blob/main/Lecture%207%20-%20Spark%20Data%20Operation%20and%20Machine%20Learning/Exercise.ipynb) build and evaluate classification model on forest dataset collected by US Forest Service using Spark

## Sample work

- User profile matrix from MovieLens' user movie rating data
  - Original : data was separated into 2 tables namely movies and ratings
  <br />

  | movieId | title                              | genres                                      |
  |:-------:|:----------------------------------:|:-------------------------------------------:|
  | 1       | Toy Story (1995)                   | Adventure|Animation|Children|Comedy|Fantasy |
  | 2       | Jumanji (1995)                     | Adventure|Children|Fantasy                  |
  | 3       | Grumpier Old Men (1995)            | Comedy|Romance                              |
  | 4       | Waiting to Exhale (1995)           | Comedy|Drama|Romance                        |
  | 5       | Father of the Bride Part II (1995) | Comedy                                      |
  
  | userId | movieId | rating | timestamp |
  |:------:|:-------:|:------:|:---------:|
  | 1      | 1       | 4.0    | 964982703 |
  | 1      | 3       | 4.0    | 964981247 |
  | 1      | 6       | 4.0    | 964982224 |
  | 1      | 47      | 5.0    | 964983815 |
  | 1      | 50      | 5.0    | 964982931 |
  
  - Final result : extract year from movie title, merge movies table into ratings table and do aggregation
  <br />

  | userId | rating count | average rating | movie year median |
  |:------:|:------------:|:--------------:|:-----------------:|
  | 1      | 232          | 4.366379       | 1990.0            |
  | 2      | 29           | 3.948276       | 2010.0            |
  | 3      | 39           | 2.435897       | 1982.0            |
  | 4      | 216          | 3.555556       | 1994.0            |
  | 5      | 44           | 3.636364       | 1994.0            |
