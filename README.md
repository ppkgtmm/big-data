# Big data

## General info
- Repo to store code from course CPE 325 (Big data) by King Mongkut's University of Technology Thonburi
- Each folder contain my solution to lab. Some folders also have lecture codes that were mostly screenshots
- Machine learning labs that use scikit-learn are excluded from the repo for now

## Technologies
<img width=700 src="https://user-images.githubusercontent.com/57994731/157178734-f691b356-28fb-4976-b27c-4d572f46546d.png" alt="tech stack diagram" />

## Walk through
- [Lab 1](https://github.com/ppkgtmm/big-data/blob/main/Lecture%201-2%20-%20Numpy%2C%20Pandas%2C%20Matplotlib/Exercise.ipynb) - Find answers by exploring flight cancellation and delays dataset which contain 5.8 M records
- [Lab 2](https://github.com/ppkgtmm/big-data/blob/main/Lecture%202%20-%20Data%20Preparation/Exercise.ipynb) - Prepare user movie ratings data into suitable form for further analysis e.g. create user profile matrix
- [Lab 3](https://github.com/ppkgtmm/big-data/blob/main/Lecture%203%20-%20Data%20Exploration/Exercise.ipynb) - Explore a real world forest dataset collected by US Forest Service before modeling
- [Lab 6](https://github.com/ppkgtmm/big-data/blob/main/Lecture%206%20-%20Hadoop%20MapReduce/Exercise.ipynb) - Perform map reduce on Sherlock Holmes book to count unigrams and bigrams after text cleaning
- [Lab 7](https://github.com/ppkgtmm/big-data/blob/main/Lecture%207%20-%20Spark%20Data%20Operation%20and%20Machine%20Learning/Exercise.ipynb) - Build and evaluate classification model on forest dataset collected by US Forest Service using Spark

## Sample work
- Airline departure delay  summary

| AIRLINE | AIRLINE NAME           | MEAN DEPARTURE DELAY |
|:-------:|:----------------------:|:--------------------:|
| NK      | Spirit Air Lines       | 15.883101            |
| UA      | United Air Lines Inc.  | 14.333056            |
| F9      | Frontier Airlines Inc. | 13.303352            |
| B6      | JetBlue Airways        | 11.442467            |
| WN      | Southwest Airlines Co. | 10.517183            |

- User profile matrix

| userId | rating count | average rating | movie year median |
|:------:|:------------:|:--------------:|:-----------------:|
| 1      | 232          | 4.366379       | 1990.0            |
| 2      | 29           | 3.948276       | 2010.0            |
| 3      | 39           | 2.435897       | 1982.0            |
| 4      | 216          | 3.555556       | 1994.0            |
| 5      | 44           | 3.636364       | 1994.0            |
