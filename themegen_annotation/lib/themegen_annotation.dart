library themegen_annotation;

const themegen = ThemeGen();

class ThemeGen {
  const ThemeGen({
    this.title,
    this.styles = const {},
  });

  final String? title;
  final Set<Type> styles;
}

class ThemeGenExtension {
  const ThemeGenExtension({
    this.title,
  });

  final String? title;
}
