* 0-iam_betty
  _changes your user ID to betty
* 1-who_am_i
  _script changes the effective userid of the current user
* 2-groups
  _prints all the groups the current user is part of
* 3-new_owner
  _changes the owner of the file hello to the user betty
* 4-empty
  _creates an empty file called hello
* 5-execute
  _adds execute permission to the owner of the file hello
* 6-multiple_permissions
  _adds execute permission to the owner and the group owner, and read permission to other users, to the file hello
* 7-everybody
  _adds execution permission to the owner, the group owner and other users, to the file hello
* 8-James_Bond
  _sets the permission to the file hello as
     1, owner: no permission at all 
     2, Group: no permission at all
     3, other users: all the permissions
* 9-John_Doe
  _sets the mode of the file hello to this:   -rwxr-x-wx 
* 10-mirror_permissions
  _sets the mode of the file hello the same as olleh's mode
* 11-directories_permissions
  _adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regular files should not be changed
* 12-directory_permission
  _creates a directory called dir_holberton with permissions 751 in the working directory
* 13-change_group
  _changes the group owner to holberton for the file hello
* 14-change_owner_and_group
  _changes the owner to betty and the group owner to holberton for all the files and directories in the working directory
* 15-symbolic_link_permissions
  _changes the owner and the group owner of the file _hello to betty and holberton respectively
* 16-if_only
  _changes the owner of the file hello to betty only if it is owned by the user guillaume
