user = User.find_or_create_by(email: "test@example.com") do |u|
  u.password = "123456"
  u.name = "João Silva"
end

project = user.owned_projects.find_or_create_by(title: "Meu Primeiro Projeto") do |p|
  p.description = "Projeto de exemplo para testar o board"
end

list1 = project.lists.find_or_create_by(title: "To Do")
list2 = project.lists.find_or_create_by(title: "Doing")
list3 = project.lists.find_or_create_by(title: "Done")

unless list1.cards.exists?(title: "Tarefa 1")
  list1.cards.create!(title: "Tarefa 1", description: "Primeira tarefa")
end

unless list1.cards.exists?(title: "Tarefa 2")
  list1.cards.create!(title: "Tarefa 2", description: "Segunda tarefa")
end
