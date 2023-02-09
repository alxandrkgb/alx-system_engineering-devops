## <p style="text-align:center;"> **Shell Permissions** </p> ##
| Script | Description |
| ------ | ------ |
| [0️⃣-iam_betty](0-iam_betty) |Creates a script that switches the current user to the user betty. |
| [1️⃣-who_am_i](1-who_am_i) | Prints the effective username of the current user.|
| [2️⃣-groups](2-groups) | Prints all the groups the current user is part of. |
| [3️⃣-new_owner](3-new_owner) | Changes the owner of the file hello to the user betty. |
| [4️⃣-empty](4-empty) | Creates an empty file called hello. |
|[5️⃣-execute](5-execute) | Adds execute permission to the owner of the file hello. |
|[6️⃣-multiple_permissions](6-multiple_permissions)|Adds execute permission to the owner and the group owner, and read permission to other users, to the file hello.|
|[7️⃣️-everybody](7-everybody)|Adds execution permission to the owner, the group owner and the other users, to the file hello|
|[8️⃣-James_Bond](8-James_Bond)|a script that sets the permission to the file hello as follows: Owner: no permission at all, Group: no permission at all, Other users: all the permissions|
|[9️⃣-John_Doe](9-John_Doe)|a script that sets the mode of the file hello to: -rwxr-x-wx 1 julien julien 23 Sep 20 14:25 hello|
|[🔟-mirror_permissions](10-mirror_permissions)|A script that sets the mode of the file hello the same as olleh’s mode.|
|[11️-directories_permissions](11-directories_permissions)|A script that adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regular files not changed.|
|[12️-directory_permissions](12-directory_permissions)|A script that creates a directory called my_dir with permissions 751 in the working directory.|
|[13-change_group](13-change_group)|a script that changes the group owner to school for the file hello|
|[100-change_owner_and_group](100-change_owner_and_group)|A script that changes the owner to vincent and the group owner to staff for all the files and directories in the working directory.|
|[101-symbolic_link_permissions](101-symbolic_link_permissions)|A script that changes the owner and the group owner of _hello to vincent and staff respectively.|
|[102-if_only](102-if_only)|A script that changes the owner of the file hello to betty only if it is owned by the user guillaume.|
|[103-Star_Wars](103-Star_Wars)|A script that will play the StarWars IV episode in the terminal.|
