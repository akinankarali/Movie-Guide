class Movie {
  String _movieName;
  String _movieDate;
  String _movieDetail;
  String _movieBigPic;
  String _movieSmallPic;

  Movie(this._movieName, this._movieDate, this._movieDetail, this._movieBigPic,
      this._movieSmallPic);

  String get movieSmallPic => _movieSmallPic;

  set movieLittlePic(String value) {
    _movieSmallPic = value;
  }

  String get movieBigPic => _movieBigPic;

  set movieBigPic(String value) {
    _movieBigPic = value;
  }

  String get movieDetail => _movieDetail;

  set movieDetail(String value) {
    _movieDetail = value;
  }

  String get movieDate => _movieDate;

  set movieDate(String value) {
    _movieDate = value;
  }

  String get movieName => _movieName;

  set movieName(String value) {
    _movieName = value;
  }
}
