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
    return users;
  }

  deleteUser(email) {
    users.remove(email);
    return users;
  }

  getListEmail() {
    users.forEach((user) => {
      if (user.runtimeType == AdminUser) {
        print('admin'),
        user = user.getMailSystem(),
        print(user)
      }
    });

    return users;
  }
}