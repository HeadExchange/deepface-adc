@steps = [
  {
    stage: 1,
    opening: true,
    replicas: [
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
      },
      {
        position: 1,
        phrase: 'Нет',
        next_stage: 3
      }
    ]
  }, {
    stage: 1,
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'Хей! приветствую тебя из глубин интернета'
      }, {
        position: 1,
        phrase: 'Ты ведь не знаешь кто я, верно?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Вообще-то знаю',
        next_stage: 2
      }, {
        position: 1,
        phrase: 'Нет',
        next_stage: 3
      }
    ]
  }, {
    stage: 1,
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'О, как хорошо, что ты заглянул'
      }, {
        position: 1,
        phrase: 'Кажется, мы уже встречались?'
      }, {
        position: 2,
        phrase: 'На вечеринке... Ну этого... того '
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Ну точно, было',
        next_stage: 2
      }, {
        position: 1,
        phrase: 'Ты меня с кем-то путаешь',
        next_stage: 3
      }
    ]
  }, {
    stage: 1,
    opening: true,
    replicas: [
      {
        position: 0,
        phrase: 'ЙОУ'
      }, {
        position: 1,
        phrase: 'ДИП!'
      }, {
        position: 2,
        phrase: 'РЭП'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'ДИП!',
        next_stage: 2
      }, {
        position: 1,
        phrase: 'ЭЭЭ, ЧТО?',
        next_stage: 3
      }
    ]
  }, {
    stage: 2,
    opening: false,
    replicas: [
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
        phrase: 'Да'
      },
      {
        position: 1,
        phrase: 'Нет'
      }
    ]
  }, {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Хей! приветствую тебя из глубин интернета'
      }, {
        position: 1,
        phrase: 'Ты ведь не знаешь кто я, верно?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Вообще-то знаю'
      }, {
        position: 1,
        phrase: 'Нет'
      }
    ]
  }, {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'О, как хорошо, что ты заглянул'
      }, {
        position: 1,
        phrase: 'Кажется, мы уже встречались?'
      }, {
        position: 2,
        phrase: 'На вечеринке... Ну этого... того '
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Ну точно, было'
      }, {
        position: 1,
        phrase: 'Ты меня с кем-то путаешь'
      }
    ]
  }, {
    stage: 2,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'ЙОУ'
      }, {
        position: 1,
        phrase: 'ДИП!'
      }, {
        position: 2,
        phrase: 'РЭП'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'ДИП!'
      }, {
        position: 1,
        phrase: 'ЭЭЭ, ЧТО?'
      }
    ]
  }, {
    stage: 3,
    opening: false,
    replicas: [
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
        phrase: 'Да'
      },
      {
        position: 1,
        phrase: 'Нет'
      }
    ]
  }, {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'Хей! приветствую тебя из глубин интернета'
      }, {
        position: 1,
        phrase: 'Ты ведь не знаешь кто я, верно?'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Вообще-то знаю'
      }, {
        position: 1,
        phrase: 'Нет'
      }
    ]
  }, {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'О, как хорошо, что ты заглянул'
      }, {
        position: 1,
        phrase: 'Кажется, мы уже встречались?'
      }, {
        position: 2,
        phrase: 'На вечеринке... Ну этого... того '
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'Ну точно, было'
      }, {
        position: 1,
        phrase: 'Ты меня с кем-то путаешь'
      }
    ]
  }, {
    stage: 3,
    opening: false,
    replicas: [
      {
        position: 0,
        phrase: 'ЙОУ'
      }, {
        position: 1,
        phrase: 'ДИП!'
      }, {
        position: 2,
        phrase: 'РЭП'
      }
    ],
    answers: [
      {
        position: 0,
        phrase: 'ДИП!'
      }, {
        position: 1,
        phrase: 'ЭЭЭ, ЧТО?'
      }
    ]
  }
]

def seed_data
  drop_db
  create_steps
  create_next_steps
end

def drop_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_steps
  @steps.each_with_index do |step, index|
    s = Step.create!(opening: step[:opening])
    puts "Step just created with params #{ s.opening }"
    @steps[index][:id] = s.id

    create_replicas(s, step[:replicas])
    create_answers(index, s, step[:answers])
  end
end

def create_replicas(step, replicas)
  replicas.each do |replica|
    r = step.replicas.create!(replica)
    puts "Replica just created with phrase '#{ r.phrase }' for step with id #{ r.step.id }"
  end
end

def create_answers(index, step, answers)
  answers.each_with_index do |answer, i|
    a = step.answers.create!(position: answer[:position], phrase: answer[:phrase])
    puts "Answer just created with phrase '#{ a.phrase }' for step with id #{ a.step.id }"

    @steps[index][:answers][i][:id] = a.id
  end
end

def create_next_steps
  @steps.each do |step|
    step[:answers].each do |answer|
      puts "before if"
      if answer.has_key?(:next_stage)
        puts "after if"
        @steps.each do |s|
          if s[:stage] == answer[:next_stage]
            ns = NextStep.create!(step_id: s[:id], answer_id: answer[:id])
            puts "NextStep just create for step with id #{ ns.step.id } and answer with id #{ ns.answer.id }"
          end
        end
      end
    end
  end
end

seed_data
