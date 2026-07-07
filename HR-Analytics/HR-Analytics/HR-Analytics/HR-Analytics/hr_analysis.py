import pandas as pd

df = pd.read_csv("employees.csv")

print("Average Salary")
print(df["Salary"].mean())

print("\nDepartment Average")
print(df.groupby("Department")["Salary"].mean())

print("\nEmployee Count")
print(df["Department"].value_counts())

print("\nHighest Paid Employee")
print(df.sort_values("Salary", ascending=False).head(1))
