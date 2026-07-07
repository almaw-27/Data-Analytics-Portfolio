import pandas as pd

# Load dataset
df = pd.read_csv("sales_data.csv")

# Create Revenue column
df["Revenue"] = df["Quantity"] * df["Unit_Price"]

print("Total Sales:")
print(df["Revenue"].sum())

print("\nRevenue by Product:")
print(df.groupby("Product")["Revenue"].sum())

print("\nRevenue by Region:")
print(df.groupby("Region")["Revenue"].sum())

print("\nRevenue by Salesperson:")
print(df.groupby("Salesperson")["Revenue"].sum())

print("\nRevenue by Category:")
print(df.groupby("Category")["Revenue"].sum())
