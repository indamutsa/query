import requests
import os

path = '/home/arsene/Project/school-projects/mdeforge/data/models-metamodels/ecore_memorec/'
# path = "/home/arsene/Project/school-projects/mdeforge/data/models-metamodels/instances_xmi_ecore/"
url = "http://34.67.33.7:3200/store/" #"http://localhost:3200/store/" 

# Change the directory
os.chdir(path)

##############################################################################


query = { "username": "arsene"}
response = requests.get(url + "user", params=query)
d = response.json()
# print(d['user']['username'])


# Querying workspace
query_w = { "username": d['user']['username']}
response = requests.get( url+  "workspace", params=query_w)
workspace_d = response.json()
# print(workspace_d['workspaces'][0]['projects'][0])


# Querying project
project_id = workspace_d['workspaces'][0]['projects'][0]
query_w = { "id": project_id }
response = requests.get(url + "project", params=query_w)
project_d = response.json()
# print(project_d)


# -----------------------------------------------------------------------------
# Testing post method with user
# w_user = { "username": "almonte", "email":"almonte@indamutsa.com" }
# res = requests.post( url + "user", json=w_user)
# print(res.json())

def iloveLissette(filename):
    ## Uploading the metamodel
    # uri = url + "artifact/model"
    uri = url + "artifact/metamodel"

    # payload={'description': 'We are trying to save the model using the api','metamodel': '6210ba1415637c0013b2610c'}
    payload={'description': 'We are trying to save the metamodel using the api','project': '6210b80015637c0013b260f6'}

    files=[('file',(filename,open(path + filename,'rb'),'application/octet-stream'))]
    headers = {}

    response = requests.request("POST", uri, headers=headers, data=payload, files=files)

    print(response.text)

##############################################################################

# iterate through all file
for f in os.listdir():
    #  print(f)
    # Check whether file is in text format or not
    if f.endswith(".ecore"):
        # file_path = f"{path}/{f}"
        data = iloveLissette(f)
        print("worked...", f)


        # call read text file function
        # read_text_file(file_path)



##############################################################################

