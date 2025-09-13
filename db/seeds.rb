user = User.create!(
  email: "test@example.com",
  password: "123456",
  first_name: "João",
  last_name: "Silva"
)

project = user.owned_projects.create!(
  title: "Meu Primeiro Projeto",
  description: "Projeto de exemplo para testar o board"
)

list1 = project.lists.create!(title: "To Do")
list2 = project.lists.create!(title: "Doing")
list3 = project.lists.create!(title: "Done")

list1.cards.create!(title: "Tarefa 1", description: "Primeira tarefa")
list1.cards.create!(title: "Tarefa 2", description: "Segunda tarefa")
