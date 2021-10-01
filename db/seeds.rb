teams = [
  {name: 'Ind', rating: 9},
  {name: 'Aus', rating: 9},
  {name: 'NZ', rating: 8},
  {name: 'BCB', rating: 6},
  {name: 'ENG', rating: 7},
  ]
  
p "Inserting seed data - #{teams.length} teams"
Team.create(teams)
p 'Inserted seed data'