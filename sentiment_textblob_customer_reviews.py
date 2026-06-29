import pandas as pd
from sqlalchemy import create_engine
from textblob import TextBlob
import re

def fetch_data_from_sql():
    conn_str = (
        "mssql+pyodbc://THUSI\\SQLEXPRESS/MarketingAnalytics"
        "?trusted_connection=yes&driver=SQL+Server"
    )
    try:
        engine = create_engine(conn_str)
        print("Connected to SQL Server successfully.")
        query = "SELECT * FROM dbo.customer_reviews"
        df = pd.read_sql(query, engine)
        return df
    except Exception as e:
        print("Connection failed:", e)
        return None

def clean_text(text):
    try:
        text = str(text).lower()
        text = text.replace('-', ' ')
        text = re.sub(r'[^\w\s]', '', text)
        text = re.sub(r'\s+', ' ', text).strip()
        return text
    except Exception as e:
        print(f"Error cleaning text: {e}")
        return ""

def safe_sentiment_analysis(text):
    try:
        return TextBlob(text).sentiment.polarity
    except Exception as e:
        print(f"Error in sentiment analysis: {e}")
        return 0.0

def classify_sentiment(score):
    if score > 0.1:
        return 'Positive'
    elif score < -0.1:
        return 'Negative'
    else:
        return 'Neutral'

# Main workflow
df = fetch_data_from_sql()
if df is not None:
    print("Cleaning review text")
    df['cleaned_review'] = df['ReviewText'].fillna('').apply(clean_text)
    
    print("Calculating TextBlob sentiment scores...")
    df['sentiment_score'] = df['cleaned_review'].apply(safe_sentiment_analysis)
    
    df['sentiment'] = df['sentiment_score'].apply(classify_sentiment)
    
    print("Sentiment classification complete.")
    print("\nSample results:")
    print(df[['cleaned_review', 'sentiment_score', 'sentiment']].head())
    
    # Save to Excel
    output_path = r"D:\GitHub\marketing-analytics-sentiment-sports-ecommerce\data\processed\sentiment_tb_results.xlsx"
    df.to_excel(output_path, index=False)
    print(f"\nOutput saved to: {output_path}")
    print("TextBlob sentiment analysis completed successfully!")

else:
    print("Failed to fetch data from SQL Server.")
# This code fetches customer reviews from a SQL Server database, cleans the text,
# performs sentiment analysis using TextBlob, classifies the sentiment, and saves the results to an Excel file. 
# # It includes error handling for database connection, text cleaning, and sentiment analysis.
# The code is designed to be robust against common issues such as missing data and connection errors.       