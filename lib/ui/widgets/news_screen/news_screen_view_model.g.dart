// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_screen_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsScreenViewModel on _NewsScreenViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_NewsScreenViewModel.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$postsAtom = Atom(name: '_NewsScreenViewModel.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$loadNewsAsyncAction = AsyncAction('_NewsScreenViewModel.loadNews');

  @override
  Future<void> loadNews() {
    return _$loadNewsAsyncAction.run(() => super.loadNews());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
posts: ${posts}
    ''';
  }
}
