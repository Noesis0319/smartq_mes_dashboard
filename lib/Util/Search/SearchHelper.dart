/*
      Korean UTF16 structure :
      ① Korean characters start from 44032(== '가').
      ② A group of same initial consonant has 588 characters.
      ③ Initial consonants are 19ea,
        such as 'ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ'
      ④ Korean initial consonant characters start from 12593 to 12622
        'ㄱ', 'ㄲ', 'ㄳ', 'ㄴ', 'ㄵ', 'ㄶ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㄺ', 'ㄻ', 'ㄼ', 'ㄽ', 'ㄾ', 'ㄿ', 'ㅀ', 'ㅁ', 'ㅂ', 'ㅃ', 'ㅄ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ',
    */

const codeOfFirstKoreanLetter = 44032;
const numberOfSameInitialConsonant = 588;
final initialConsonants = [
  'ㄱ',
  'ㄲ',
  'ㄴ',
  'ㄷ',
  'ㄸ',
  'ㄹ',
  'ㅁ',
  'ㅂ',
  'ㅃ',
  'ㅅ',
  'ㅆ',
  'ㅇ',
  'ㅈ',
  'ㅉ',
  'ㅊ',
  'ㅋ',
  'ㅌ',
  'ㅍ',
  'ㅎ'
];

class SearchHelper {
  static bool search({required String target, required String keyword}) {

    RegExp regExp = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    RegExp koreanRegExp = RegExp(r'[\uac00-\ud7af]+');


    if(regExp.hasMatch(target)){
      target = target.replaceAll(" ", "").replaceAll("-", "").toLowerCase();
      keyword = keyword.replaceAll(" ", "").replaceAll("-", "").toLowerCase();
    }else{
      target = target.replaceAll(" ", "").toLowerCase();
      keyword = keyword.replaceAll(" ", "").toLowerCase();
    }

    if(koreanRegExp.hasMatch(target)){
      return _koreanSearch(target: target, keyword: keyword);
    }

    if(target.contains(keyword)) return true;

    return false;
  }

  static _koreanSearch({required String target, required String keyword}){
    if (target.length < keyword.length) {
      return false;
    }

    if (keyword.isEmpty) return true;

    for (int i = 0; i < target.length - keyword.length + 1; i++) {
      bool contains = true;
      for (int j = 0; j < keyword.length; j++) {
        if (initialConsonants.contains(keyword.substring(j, j + 1))) {
          if ((target.substring(i + j, i + j + 1).codeUnitAt(0) - codeOfFirstKoreanLetter) ~/
              numberOfSameInitialConsonant !=
              initialConsonants.indexOf(keyword.substring(j, j + 1))) {
            contains = false;
            break;
          }
        } else {
          if (keyword.substring(j, j + 1) != target.substring(i + j, i + j + 1)) {
            contains = false;
            break;
          }
        }
      }
      if (contains) return true;
    }
    return false;
  }
}
