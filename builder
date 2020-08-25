class BundleBiulder:
    def __init__(self):
        self.reset()

    def reset(self):
        self._bundle = GameBundle()

    @property
    def bundle(self):
        bundle = self._bundle
        self.reset()
        return bundle

    def game(self):
        self._bundle.add('Wither 3')

    def artbook(self):
        self._bundle.add('Wild Hunt Digital Artbook')

    def soundtrack(self):
        self._bundle.add('Wild Hunt Soundtrack')

    def post_code(self):
        self._bundle.add('Promocode')


class GameBundle:
    def __init__(self):
        self.stuff = []

    def add(self, item):
        self.stuff.append(item)

    def check_bundle(self):
        print(','.join(self.stuff))


class Director:
    def __init__(self):
        self._builder = None

    @property
    def builder(self):
        return self._builder

    @builder.setter
    def builder(self, builder):
        self._builder = builder

    def standart_edition(self):
        self.builder.game()

    def deluxe_edition(self):
        self.builder.game()
        self.builder.artbook()
        self.builder.soundtrack()
        self.builder.post_code()


if __name__ == '__main__':
    director = Director()
    builder = BundleBiulder()
    director.builder = builder

    director.standart_edition()
    builder.bundle.check_bundle()

    director.deluxe_edition()
    builder.bundle.check_bundle()

    builder.game()
    builder.artbook()
    builder.soundtrack()
    builder.bundle.check_bundle()
