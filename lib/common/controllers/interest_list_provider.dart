import 'package:fad/models/interest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'interest_list_provider.g.dart';

@riverpod
class InterestList extends _$InterestList {
  @override
  List<Interest> build() {
    return [
      Interest(
        title: 'Classic/Timeless',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1VO7gwHUqDaH4D4y88ovSakh_IVTeNZAX',
      ),
      Interest(
        title: 'Vintage/Retro',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1fa9MLnD572Eg3gB2YP86alkxpqWgufqt',
      ),
      Interest(
        title: 'Streetwear',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1zeLbpDxsXkCgkxR7UUA-jwLUxb8pmqXp',
      ),
      Interest(
        title: 'Bohemian',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1ODQfmLQBkqtCzNsZ-HFkEATviFCut6VT',
      ),
      Interest(
        title: 'Gothic',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1LG4JUYBFvZq4pRI_AcT4SumfR-0I0rGl',
      ),
      Interest(
        title: 'Minimalist',
        imageUrl:
            'https://drive.google.com/uc?export=view&id=1yTcuJTXyq-BPAp9WTPE7CNWzFcMkgIoh',
      ),
    ];
  }
}
