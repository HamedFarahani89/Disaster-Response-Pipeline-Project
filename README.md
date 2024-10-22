
# Disaster Response Pipeline

## Installation
This project requires the following Python libraries, which are all available in the Jupyter notebook distribution:

- pandas  
- re  
- sys  
- json  
- sklearn  
- nltk  
- sqlalchemy  
- pickle  
- Flask  
- plotly  
- sqlite3  

## Project Description
This project is part of the Udacity Data Scientist Nanodegree program. It utilizes open data from the Disaster Response Pipeline, following the project rubric to build an end-to-end data pipeline for disaster response. The pipeline involves the following key steps:

### 1. ETL Pipeline
- Loads messages and categories datasets.
- Merges the two datasets.
- Cleans the data to remove duplicates and inconsistencies.
- Stores the cleaned data in an SQLite database.

### 2. Machine Learning Pipeline
- Loads the data from the SQLite database.
- Splits the data into training and test sets.
- Builds a text processing and machine learning pipeline.
- Trains and tunes a model using GridSearchCV.
- Evaluates the model on the test set and outputs results.
- Exports the final model as a pickle file for later use.

### 3. Flask Web Application
- A web app where users input a message.
- The app returns classification results across 36 categories, indicating which types of disasters or needs the message pertains to.

## Files in the Repository
This repository includes the following files:

1. `README.md` — A summary of the project, setup instructions, and results.
2. `messages.csv` — The messages dataset provided by Figure Eight.
3. `categories.csv` — The categories dataset provided by Figure Eight.
4. `ETL_Pipeline_Preparation.ipynb` — The Jupyter notebook containing the code for the ETL pipeline.
5. `ML_Pipeline_Preparation.ipynb` — The Jupyter notebook with the code for building and training the machine learning model.
6. Folders: `data/`, `models/`, `app/` — Contain the cleaned data, saved models, and web app files, respectively.

## Instructions
To set up and run the project, follow these steps:

1. **Run the ETL pipeline** to clean the data and store it in the SQLite database:  
   ```bash
   python data/process_data.py data/disaster_messages.csv data/disaster_categories.csv data/DisasterResponse.db
   ```

2. **Run the Machine Learning pipeline** to train the model and save the classifier:  
   ```bash
   python models/train_classifier.py data/DisasterResponse.db models/classifier.pkl
   ```

3. **Launch the web app**:  
   Navigate to the app's directory and run the following command:  
   ```bash
   python run.py
   ```

## Screenshots
Here are some screenshots of the web app in action:

![1](https://github.com/user-attachments/assets/ce3e4f1b-76fe-40ef-bef6-1fd12a5941db)
![2](https://github.com/user-attachments/assets/8f919972-575c-4170-8ec5-c764d2ad08db)


## Acknowledgments
This project was completed as part of the Udacity Data Scientist Nanodegree program, using the Figure Eight dataset.
