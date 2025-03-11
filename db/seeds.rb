Post.create!([
               { title: 'Morning Walk', content: 'A refreshing walk in the park.', date: Date.today, time: 'morning' },
               { title: 'Lunch Meeting', content: 'Discussing project updates.', date: Date.today, time: 'noon' },
               { title: 'Evening Workout', content: 'Hitting the gym for strength training.', date: Date.today, time: 'evening' },
               { title: 'Night Reading', content: 'Reading a new novel before bed.', date: Date.today, time: 'night' },
               { title: 'Sunrise Photography', content: 'Captured a beautiful sunrise.', date: Date.yesterday, time: 'morning' },
               { title: 'Business Lunch', content: 'Networking with colleagues.', date: Date.yesterday, time: 'noon' },
               { title: 'Movie Night', content: 'Watching a new blockbuster.', date: Date.yesterday, time: 'evening' },
               { title: 'Late Night Coding', content: 'Fixing bugs in the project.', date: Date.yesterday, time: 'night' },
               { title: 'Morning Meditation', content: 'Starting the day with mindfulness.', date: 2.days.ago, time: 'morning' },
               { title: 'Casual Dinner', content: 'Enjoying a meal with friends.', date: 2.days.ago, time: 'evening' }
             ])
