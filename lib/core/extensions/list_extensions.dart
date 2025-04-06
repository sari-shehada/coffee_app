//TODO: Test thorougly and then move the utils package
extension ListExtensions<ItemType> on List<ItemType> {
  Iterable<OutputType> mapWithIndex<OutputType>(
    OutputType Function(ItemType item, int itemIndex) mapper,
  ) {
    return indexed.map<OutputType>((e) => mapper(e.$2, e.$1));
  }
}
