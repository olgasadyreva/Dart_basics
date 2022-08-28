class User {
  final String email;

  User(this.email);
}

class AdminUser extends User with UserMixin {
  AdminUser(super.email);

}

class GeneralUser extends User{
  GeneralUser(super.email);

}

mixin UserMixin on User {
  getMailSystem() {
    String mailSystem = email.split('@')[1];
    return mailSystem;
  }
}

class UserManager<T extends User> {
  var users = [];

  addUser(email) {
    users.add(email);
    print(users);
    return users;
  }

  deleteUser(email) {
    users.remove(email);
    return users;
  }

  getListEmail() {
    users.forEach((user) => {
      if(user == 'admin@gmail.com') {
        users.add(user.getMailSystem()),
        print(user.getMailSystem())
      } else {
        users.add(user.email),
        print(user.email)
      }
    });
    return users;
  }
}