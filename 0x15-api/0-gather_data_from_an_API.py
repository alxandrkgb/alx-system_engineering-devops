#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee ID
returns information about his/her TODO list progress.
"""

import requests
from sys import argv

def get_employee_todo_list(employee_id):
    user_address = requests.get(f'https://jsonplaceholder.typicode.com/users/{employee_id}')
    user_data = user_address.json()
    employee_name = user_data.get('name')

    tod = requests.get(f'https://jsonplaceholder.typicode.com/todos?userId={employee_id}')
    request_data = tod.json()
    completed_tasks = [task for task in request_data if task.get('completed')]

    print(f"Employee {employee_name} is done with tasks({len(completed_tasks)}/{len(request_data)}):")
    
    for index, task in enumerate(completed_tasks, start=1):
        print(f"\tTask {index}: {task.get('title')}")

if __name__ == '__main__':
    if len(argv) != 2:
        print("Usage: python3 script_name.py employee_id")
        exit(1)

    employee_id = argv[1]
    get_employee_todo_list(employee_id)
