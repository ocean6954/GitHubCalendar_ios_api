# テストデータの配列
test_weeks_data = [
  {
    contribution_days: [
      { date: '2024-01-01', contribution_count: 2 },
      { date: '2024-01-02', contribution_count: 2 },
      { date: '2024-01-03', contribution_count: 2 },
      { date: '2024-01-04', contribution_count: 2 },
      { date: '2024-01-05', contribution_count: 2 },
      { date: '2024-01-06', contribution_count: 2 },
      { date: '2024-01-07', contribution_count: 2 }
    ]
  },
  {
    contribution_days: [
      { date: '2024-01-08', contribution_count: 4 },
      { date: '2024-01-09', contribution_count: 4 },
      { date: '2024-01-10', contribution_count: 4 },
      { date: '2024-01-11', contribution_count: 4 },
      { date: '2024-01-12', contribution_count: 4 },
      { date: '2024-01-13', contribution_count: 4 },
      { date: '2024-01-14', contribution_count: 4 }
    ]
  },
  {
    contribution_days: [
      { date: '2024-01-15', contribution_count: 6 },
      { date: '2024-01-16', contribution_count: 6 },
      { date: '2024-01-17', contribution_count: 6 },
      { date: '2024-01-18', contribution_count: 6 },
      { date: '2024-01-19', contribution_count: 6 },
      { date: '2024-01-20', contribution_count: 6 },
      { date: '2024-01-21', contribution_count: 6 }
    ]
  }
]

# データベースにシードデータを挿入
test_weeks_data.each do |week|
  week[:contribution_days].each do |day|
    contribution = Contribution.new(date: day[:date], contribution_count: day[:contribution_count])
    if contribution.save
      puts "Saved: Date: #{contribution.date}, Contribution Count: #{contribution.contribution_count}"
    else
      puts "Failed to save: Date: #{day[:date]}, Errors: #{contribution.errors.full_messages.join(", ")}"
    end
  end
end

puts 'Seed data inserted successfully'
