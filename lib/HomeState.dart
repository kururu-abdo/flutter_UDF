class HomeState {
  
  final bool? isLoading ;
  final String? title;
  final String? image;

  HomeState({this.isLoading = false, this.title='home', this.image =''});

HomeState copyWith({
    String? title,
    String? image,
    bool? isLoading,
  
  }) {
    return HomeState(
      title: title ?? this.title,
      isLoading: isLoading ?? this.isLoading,
      image: image ?? this.image,
     
    );
  }


}