import 'package:flutterapp/state_management/mobx/model/user.dart';
import 'package:flutterapp/state_management/mobx/util/network_service.dart';
import 'package:mobx/mobx.dart';

//part 'user_store.g.dart';

class UserStore extends _UserStore{

}

abstract class _UserStore with Store {
  final NetworkService httpClient = NetworkService();

  @observable
  ObservableFuture<List<User>> userListFuture;

  @action
  Future fetchUsers() => userListFuture = ObservableFuture(httpClient
      .getData('https://reqres.in/api/users?page=1')
      .then((users) => users));


  void getTheUsers() {
    fetchUsers();
  }
}