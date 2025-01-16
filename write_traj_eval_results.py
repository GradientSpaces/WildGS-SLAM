import numpy as np
import json
import pandas as pd
import os

datasets = os.listdir('./output')
for dataset in datasets:
    dataset_path = os.path.join('output', dataset)
    scenes = os.listdir(dataset_path)

    data = {scene: [] for scene in scenes}
    averages = []

    row_data = []
    rmses = []
    for scene in scenes:
        exp_folder = os.path.join(dataset_path, scene)
        # metrics_full_traj, metrics_kf_traj, metrics_kf_traj_before_ba
        result_file = os.path.join(exp_folder, "traj/metrics_full_traj.txt")
        if os.path.exists(result_file):
            # Load the JSON file
            with open(result_file, "r") as f:
                output = f.readlines()

            rmse = float(output[8].split(',')[0].replace("{'rmse': ",''))
            
            # Add metrics to the row
            row_data.append(f"{rmse*1e2:.2f}")
            rmses.append(rmse)
        else:
            row_data.append("N/A")  # If file doesn't exist, mark it as N/A
    avg_rmse = np.nanmean(rmses)
    averages.append(f"{avg_rmse*1e2:.2f}")
    for scene, value in zip(scenes, row_data):
        data[scene].append(value)

    data['Average'] = averages

    # Convert the data to a Pandas DataFrame
    df = pd.DataFrame(data, index=['wildgs-slam'])

    # Save the DataFrame as a CSV file
    csv_path = f"./output/{dataset}_eval.csv"
    df.to_csv(csv_path)

    # Output the CSV file path
    print(f"Results saved to {csv_path}")
        