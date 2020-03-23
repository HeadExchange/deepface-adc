@steps = [
  {
    title: 'Opening First',
    stage: 1,
    opening: true,
    replicas:[
      {
        position: 0,
        phrase: 'Ghbdtn! Rfr ltkf?'
      },
      {
        position: 1,
        phrase: 'Ой'
      },
      {
        position: 2,
        phrase: 'Привет! Как дела?'
      },
      {
        position: 3,
        phrase: 'Ладно, знаешь меня?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Да',
        next_stage: 2
      },{
        position: 0,
        phrase: 'Нет',
        next_stage: 4
      }
    ]
  },{
    title: 'Opening Second',
    stage: 1,
    opening: true,
    replicas:[
      {
        position: 0,
        phrase: 'Хей! приветствую тебя из глубин интернета'
      },
      {
        position: 1,
        phrase: 'Ты ведь не знаешь кто я, верно?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Вообще-то знаю',
        next_stage: 2
      },{
        position: 0,
        phrase: 'Нет',
        next_stage: 4
      }
    ]
  },{
    title: 'Opening Third',
    stage: 1,
    opening: true,
    replicas:[
      {
        position: 0,
        phrase: 'О, как хорошо, что ты заглянул'
      },
      {
        position: 1,
        phrase: 'Кажется, мы уже встречались?'
      },
      {
        position: 2,
        phrase: 'На вечеринке... Ну этого... того '
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Ну точно, было',
        next_stage: 2
      },{
        position: 0,
        phrase: 'Ты меня с кем-то путаешь',
        next_stage: 4
      }
    ]
  },{
    title: 'Opening 4',
    stage: 1,
    opening: true,
    replicas:[
      {
        position: 0,
        phrase: 'ЙОУ'
      },
      {
        position: 1,
        phrase: 'ДИП!'
      },{
        position: 3,
        phrase: 'РЭП'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'ДИП!',
        next_stage: 2
      },{
        position: 0,
        phrase: 'ЭЭЭ, ЧТО?',
        next_stage: 4
      }
    ]
  },{
    title: 'Человек знает дипа 1',
    stage: 2,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'А ты, я гляжу, прошаренный! Задам тебе пару вопросов'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Я сегодня не в настроении(',
        next_stage: 3
      },{
        position: 0,
        phrase: 'Ок',
        next_stage: 5
      }
    ]
  },{
    title: 'Человек знает дипа 2',
    stage: 2,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ого, ну ничего себе! Точно хочу узнать тебя поближе'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Я сегодня не в настроении(',
        next_stage: 3
      },{
        position: 0,
        phrase: 'Ок',
        next_stage: 5
      }
    ]
  },{
    title: 'Человек знает дипа 3',
    stage: 2,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Вау! Круто! Мама, я знаменитость'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Я сегодня не в настроении(',
        next_stage: 3
      },{
        position: 0,
        phrase: 'Ок',
        next_stage: 5
      }
    ]
  },{
    title: 'Быстрый стикерпак',
    stage: 3,
    opening: false,
    replicas:[
    {
      position: 0,
      phrase: 'Как знаешь'
    },
      {
        position: 1,
        phrase: 'Ладно, я добрый, держи стикерпак за честность'
      },{
        position: 2,
        type: 'ImageReplica',
        image: 'sticker_2.jpg',
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Забрать',
        next_stage: 28
      }
    ]
  },{
    title: 'Человек не знает дипа 1',
    stage: 4,
    opening: false,
    replicas:[
      {
          position: 0,
          phrase: 'Я Дипфейс'
      },
      {
        position: 1,
        phrase: 'Маскот кафедры «Дизайн и программированеие»!'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Супер',
        next_stage: 5,
        effect: 'dipRain'
      }
    ]
  },{
    title: 'Человек не знает дипа 2',
    stage: 4,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Я чёрный круг с ромбом вместо глаза, неужели не видно?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Лол',
        next_stage: 5,
        effect: 'dipRain'
      }
    ]
  },{
    title: 'Человек не знает дипа 3',
    stage: 4,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Вообще, я не раскрываю своё происхождение, но тебе скажу '
      },
      {
        position: 1,
        phrase: 'Я был рождён в недрах Школы Дизайна, меня сотворили дизайнеры... или программисты... или... Я так и не понял, кто они'
      },
      {
        position: 2,
        phrase: 'Я видел только миллион своих клонов, а потом всё потемнело. Очнулся уже здесь, на сайте. Тут немного одиноко, поэтому давай поболтаем?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Окей',
        next_stage: 5,
        effect: 'dipRain'
      }
    ]
  },{
    title: 'Человек не знает дипа 4',
    stage: 4,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Я Дипфейс! Я создаю новую визуальную культуру! '
      },
      {
        position: 1,
        phrase: 'Ой, кажется это не мои слова'
      },{
        position: 2,
        phrase: 'Прости, в этом интернете в меня часто прилетают куски информации'
      },{
        position: 3,
        phrase: 'На самом деле, я символ кафедры «Дизайн и программирование» и скоро здесь будет весело))'
      },{
        position: 4,
        phrase: '))))+'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Супер',
        next_stage: 5,
        effect: 'dipRain'
      }
    ]
  },{
    title: 'Развилка 1',
    stage: 5,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ну раз уж я рассказал кто я, поделишься кто ты?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Дизайнер',
        next_stage: 12
      },{
        position: 0,
        phrase: 'Прогер',
        next_stage: 21
      },{
        position: 0,
        phrase: '???',
        next_stage: 6
      }
    ]
  },{
    title: 'Развилка 2',
    stage: 5,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'А ты сам чем занимаешься?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Дизайнер',
        next_stage: 12
      },{
        position: 0,
        phrase: 'Прогер',
        next_stage: 21
      },{
        position: 0,
        phrase: '???',
        next_stage: 6
      }
    ]
  },{
    title: 'Развилка 3',
    stage: 5,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Твоя очередь представиться'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Дизайнер',
        next_stage: 12
      },{
        position: 0,
        phrase: 'Прогер',
        next_stage: 21
      },{
        position: 0,
        phrase: '???',
        next_stage: 6
      }
    ]
  },{
    title: 'Мем',
    stage: 6,
    opening: false,
    replicas:[
      {
      position: 0,
      image: 'meme.jpg',
      type: 'ImageReplica'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Эм, ну смешно...',
        next_stage: 7
      }
    ]
    },{
    title: 'Квиз что раньше 1',
    stage: 7,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Что раньше Sketch или Figma?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Sketch',
        effect: '',
        next_stage: 8
      },{
        position: 0,
        phrase: 'Figma',
        effect: 'wrongAnswer',
        next_stage: 8
      }
    ]
  },{
    title: 'Квиз что раньше 2',
    stage: 8,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'HTML или Photoshop?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'HTML',
        effect: 'wrongAnswer',
        next_stage: 9
      },{
        position: 0,
        phrase: 'Photoshop',
        effect: '',
        next_stage: 9
      }
    ]
  },{
    title: 'Квиз что раньше 3',
    stage: 9,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Такс, а здесь что было первым? GUI или TUI?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'GUI',
        effect: 'wrongAnswer',
        next_stage: 10
      },{
        position: 0,
        phrase: 'TUI',
        effect: '',
        next_stage: 10
      }
    ]
  },{
    title: 'Кормление контентом 1',
    stage: 10,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ой, что-то я проголодался, покорми меня'
      },
      {
        position: 1,
        phrase: 'А когда я ем, я расту, а ещё я дам тебе подарок за это'
      },
      {
        position: 2,
        phrase: 'Если что, питаюсь я контентом, поэтому поскидывай мне ссылки на что-нибудь интересненькое'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'здесь должен быть инпут',
        next_stage: 11
      }
    ]
  },{
    title: 'Кормление контентом 2',
    stage: 11,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'СПАСИБО! ОЧЕНЬ ВКУСНО'
      },
      {
        position: 1,
        phrase: 'Держи, я обещал'
      },
      {
        position: 2,
        image: 'sticker_3.jpg',
        type: 'ImageReplica'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Забрать',
        next_stage: 28
      }
    ]
  },{
    title: 'Квиз по интерфейсам 1',
    stage: 12,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Что это за меню?'
      },
      {
        position: 1,
        type: 'ImageReplica',
        image: 'alt.jpg'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Alt burger',
        effect: '',
        next_stage: 13
      },{
        position: 0,
        phrase: 'Cmd burger',
        effect: 'wrongAnswer',
        next_stage: 13
      },{
        position: 0,
        phrase: 'Ctrl burger',
        effect: 'wrongAnswer',
        next_stage: 13
      },{
        position: 0,
        phrase: 'Shift burger',
        effect: 'wrongAnswer',
        next_stage: 13
      }
    ]
  },{
    title: 'Квиз по интерфейсам 2',
    stage: 13,
    opening: false,
    replicas:[
    {
      position: 0,
      phrase: 'А это?'
    },
    {
      position: 1,
      type: 'ImageReplica',
      image: 'burger.jpg'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Сендвич',
        effect: 'wrongAnswer',
        next_stage: 14
      },{
        position: 0,
        phrase: 'Гамбургер',
        effect: '',
        next_stage: 14
      },{
        position: 0,
        phrase: 'Капкейк',
        effect: 'wrongAnswer',
        next_stage: 14
      },{
        position: 0,
        phrase: 'Пирожок',
        effect: 'wrongAnswer',
        next_stage: 14
      }
    ]
  },{
    title: 'Квиз по интерфейсам 3',
    stage: 14,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'А это?'
      },
      {
        position: 1,
        type: 'ImageReplica',
        image: 'kebab.jpg'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Митбол',
        effect: 'wrongAnswer',
        next_stage: 15
      },{
        position: 0,
        phrase: 'Кебаб',
        effect: '',
        next_stage: 15
      },{
        position: 0,
        phrase: 'Онигири',
        effect: 'wrongAnswer',
        next_stage: 15
      }
    ]
  },{
    title: 'Квиз по интерфейсам 4',
    stage: 15,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ещё не проголодался?'
      },{
        position: 0,
        phrase: 'Тогда давай ещё парочку'
      },
      {
        position: 1,
        type: 'ImageReplica',
        image: 'meatball.jpg'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Кебаб',
        effect: 'wrongAnswer',
        next_stage: 16
      },{
        position: 0,
        phrase: 'Шашлык',
        effect: '',
        next_stage: 16
      },{
        position: 0,
        phrase: 'Шарики',
        effect: 'wrongAnswer',
        next_stage: 16
      },{
        position: 0,
        phrase: 'Бенто',
        effect: 'wrongAnswer',
        next_stage: 16
      }
    ]
  },{
    title: 'Квиз по интерфейсам 5',
    stage: 16,
    opening: false,
    replicas:[
      {
        position: 0,
        type: 'ImageReplica',
        image: 'bento.jpg'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Это что меню?',
        effect: '',
        next_stage: 17
      },{
        position: 0,
        phrase: 'Онигири',
        effect: 'wrongAnswer',
        next_stage: 17
      },{
        position: 0,
        phrase: 'Бенто',
        effect: '',
        next_stage: 17
      }
    ]
  },{
    title: 'Квиз по интерфейсам 6',
    stage: 17,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ну, с меню разобрались'
      },{
        position: 1,
        phrase: 'Ещё такой вопрос'
      },{
        position: 2,
        phrase: 'Какого графического формата не существует?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'jpg',
        effect: 'wrongAnswer',
        next_stage: 18
      },{
        position: 0,
        phrase: 'svg',
        effect: 'wrongAnswer',
        next_stage: 18
      },{
        position: 0,
        phrase: 'tiff',
        effect: 'wrongAnswer',
        next_stage: 18
      },{
        position: 0,
        phrase: 'dip',
        effect: '',
        next_stage: 18
      },{
        position: 0,
        phrase: 'gif',
        effect: 'wrongAnswer',
        next_stage: 18
      }
    ]
  },{
    title: 'Квиз по интерфейсам 7',
    stage: 18,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Сейчас будет сложнее'
      },{
        position: 1,
        phrase: 'Что это иконка или символ?'
      },{
        position: 2,
        image: 'symbol.jpg',
        type: 'ImageReplica'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Символ',
        effect: '',
        next_stage: 19
      },{
        position: 0,
        phrase: 'Иконка',
        effect: 'wrongAnswer',
        next_stage: 20
      }
    ]
  },{
    title: 'Квиз по интерфейсам 8',
    stage: 19,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Это правильно!'
      },{
        position: 1,
        phrase: 'Ты вау!'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Супер',
        next_stage: 28
      }
    ]
    },{
    title: 'Квиз по интерфейсам 9',
    stage: 20,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Не, не угадал! Объясню: '
      },{
        position: 1,
        phrase: 'Правильно: символ'
      },{
        position: 2,
        phrase: 'Иконка показывает нам визуальное представление вещи, которая выглядит реалистично по отношению к изображаемому предмету. А символ не обязательно выглядит как то, что он представляет. Иконка иллюстративна, а символ изображает предмет более абстрактно. Сложно представить что-то настолько широкое и абстрактное, как музыка, с фиксированным единым визуальным образом.'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Супер',
        next_stage: 28
      }
    ]
  },{
    title: 'Квиз по коду 1',
    stage: 21,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Что делать если не работает код?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Бежать на stackoverflow',
        effect: '',
        next_stage: 22
      },{
        position: 0,
        phrase: 'Спросить маму',
        effect: '',
        next_stage: 22
      },{
        position: 0,
        phrase: 'Спросить папу',
        effect: '',
        next_stage: 22
      }
    ]
  },{
    title: 'Квиз по коду 2',
    stage: 22,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Мне надоело сидеть в левом углу, помоги мне сгонять в правый угол'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'flex-start',
        effect: 'wrongAnswer',
        next_stage: 23
      },{
        position: 0,
        phrase: 'flex-end',
        effect: '',
        next_stage: 23
      },{
        position: 0,
        phrase: 'space-around',
        effect: 'wrongAnswer',
        next_stage: 23
      }
    ]
  },{
    title: 'Квиз по коду 3',
    stage: 23,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Âíèìàíèå ïðè çàãðóçêå ôàéëàíóæíî âûáðàòü âñå âíóòðåííèå ññûëêè'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'UTF-8',
        effect: '',
        next_stage: 26
      },{
        position: 0,
        phrase: 'UTF-16',
        effect: '',
        next_stage: 25
      },{
        position: 0,
        phrase: 'UTF-32',
        effect: '',
        next_stage: 24
      }
    ]
  },{
    title: 'Квиз по коду 3',
    stage: 24,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Âíèì ðàò àíèå ïðèçàãðóçêå '
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'UTF-8',
        effect: '',
        next_stage: 26
      },{
        position: 0,
        phrase: 'UTF-16',
        effect: '',
        next_stage: 25
      }
    ]
  },{
    title: 'Квиз по коду 3',
    stage: 25,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Âí ò àíèå ïðèçàãðà ðóçêå'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'UTF-8',
        effect: '',
        next_stage: 26
      }
    ]
  },{
    title: 'Квиз по коду 4',
    stage: 26,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Спасибо тебе, человек, что поправил мой слетевший юникод! Можем болтаь дальше.'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Супер',
        next_stage: 27
      }
    ]
  },{
    title: 'Финал квизов',
    stage: 27,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Молодец! ты дошёл до конца, за это я дарю тебе набор стикеров!'
      },
      {
        position: 1,
        image: 'sticker_1.jpg',
        type: 'ImageReplica',
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Забрать',
        next_stage: 28
      }
    ]
  },{
    title: 'Настоящие стикеры 1',
    stage: 28,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'А хочешь получить настоящие наклейки?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Конечно!',
        next_stage: 30
      },{
        position: 0,
        phrase: 'Нет',
        next_stage: 29
      }
    ]
  },{
    title: 'Не хочет настоящие стикеры ',
    stage: 29,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Ну ладно, как знаешь('
      },{
        position: 1,
        phrase: 'Спасибо за игру!'
      },{
        position: 2,
        phrase: 'Подписывайся на наш телеграм, чтобы узнать много интересного'
      },{
        position: 3,
        phrase: 'здесь должна быть ссылка на телеграм'
      }
    ]
  },{
    title: 'Настоящие стикеры 1.2',
    stage: 28,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Псс, а как насчёт бумажных наклеек?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Хочу!',
        next_stage: 30
      },{
        position: 0,
        phrase: 'Нет',
        next_stage: 29
      }
    ]
  },{
    title: 'Настоящие стикеры 1.3',
    stage: 28,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'У меня есть ещё сюрприз'
      },{
        position: 1,
        phrase: 'Ты можешь получить настоящие наклейки!'
      },{
        position: 2,
        phrase: 'Супер?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Да!',
        next_stage: 30
      },{
        position: 0,
        phrase: 'Нет',
        next_stage: 29
      }
    ]
  },{
    title: 'Настоящие стикеры 2',
    stage: 30,
    opening: false,
    replicas:[
      {
        position: 0,
        phrase: 'Класс'
      },{
        position: 1,
        phrase: 'Оставь свой email и я пришлю всю инфу о том, как получить бумажный стикерпак'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'здесь должен быть инпут'
      }
    ]
  }
]

def seed_data
  drop_db
  drop_uploads
  create_steps
  create_next_steps
end

def drop_db
  Rake::Task[ 'db:drop' ].invoke
  Rake::Task[ 'db:create' ].invoke
  Rake::Task[ 'db:migrate' ].invoke
end

def drop_uploads
  folders = Dir.glob(File.join(Rails.root, "public/uploads//*"))
  folders.each{ |f| FileUtils.rm_rf(f)}
end

def create_steps
  @steps.each_with_index do |step, index|
    s = Step.create!(opening: step[:opening], title: step[:title])
    puts "Step just created with params #{s.opening}"
    @steps[index][:id] = s.id

    create_replicas(s, step[:replicas])
    create_answers(index, s, step[:answers]) if step[:answers]
  end
end

def create_replicas(step, replicas)
  replicas.shuffle.each_with_index do |replica, index|

    replica.delete(:next_stage)

    if replica[:type] == "ImageReplica"
      #replica[:image] = File.open(File.join(Rails.root, "public/autoupload/#{ replica[:image] }"))
      puts File.join(Rails.root, "public/autoupload/#{ replica[:image] }")
      puts replica[:image]
      puts replica
      #image = File.open(File.join(Rails.root, "public/autoupload/#{ replica[:image] }"))
      r = step.image_replicas.new(replica)
      r.image = upload_replica_image(replica[:image])
      r.save
    else
      r = step.text_replicas.create!(replica)
    end

    puts "Step just created with phrase '#{ r.phrase }' for step with id #{ r.step.id }"
  end
end

def create_answers(index, step, answers)
  answers.each_with_index do |answer, i|
    a = step.answers.create!(position: answer[:position], phrase: answer[:phrase], effect: answer[:effect])
    puts "Answer just created with phrase '#{ a.phrase }' for step with id #{ a.step.id } and effect #{ a.effect }"

    @steps[index][:answers][i][:id] = a.id
  end
end

def create_next_steps
  @steps.each do |step|
    if step[:answers]
      step[:answers].each do |answer|
        if answer.has_key?(:next_stage)
          @steps.each do |s|
            if s[:stage] == answer[:next_stage]
              ns = NextStep.create!(step_id: s[:id], answer_id: answer[:id])
              puts "NextStep just create for step with id #{ns.step.id} and answer with id #{ns.answer.id} "
            end
          end
        end
      end
    end
  end
end

def upload_replica_image(filename)
  uploader = ReplicaImageUploader.new(ImageReplica.new, :image)
  uploader.cache!(File.open(File.join(Rails.root, "public/autoupload/#{ filename }")))
  uploader
end

seed_data
