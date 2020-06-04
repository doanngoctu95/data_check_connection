import 'package:flutterapp/state_management/mobx/model/post.dart';
import 'package:flutterapp/state_management/mobx/util/network_service.dart';
import 'package:mobx/mobx.dart';

//part 'post_store.g.dart';

class PostStore extends _PostStore{

}

abstract class _PostStore with Store {
  final NetworkService httpClient = NetworkService();

  @observable
  ObservableFuture<List<Post>> postsListFuture;

  @action
  Future fetchPosts() => postsListFuture = ObservableFuture(httpClient
      .getPosts('https://jsonplaceholder.typicode.com/posts')
      .then((posts) => posts));


  void getThePosts() {
    fetchPosts();
  }
}