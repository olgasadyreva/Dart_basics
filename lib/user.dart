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
  List<User> users = [];

  addUser(email) {
    users.add(email);
    return users;
  }

  deleteUser(email) {
    users.remove(email);
    return users;
  }

  getListEmail() {
    List<String> result = [];
    for (var user in users) {
      if (user.runtimeType == AdminUser) {
        result.add(AdminUser(user.email).getMailSystem());
      } else {
        result.add(user.email);
      }
    }
    print(result);
    return result;
  }
}