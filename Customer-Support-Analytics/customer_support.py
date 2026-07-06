import pandas as pd

# Load dataset (you will replace this later with real file)
df = pd.read_csv("customer_support.csv")

# Basic analysis
print("Total Tickets:", len(df))

# Tickets by agent
print("\nTickets by Agent:")
print(df["agent"].value_counts())

# Tickets by region
print("\nTickets by Region:")
print(df["region"].value_counts())

# Issue types
print("\nIssue Types:")
print(df["issue_type"].value_counts())

# Average resolution time
print("\nAverage Resolution Time:")
print(df["resolution_time"].mean())

# Average satisfaction
print("\nAverage Satisfaction:")
print(df["satisfaction"].mean())
