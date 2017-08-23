hash = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

cap = hash[:data][:rooms][0][:capacity]
p cap

room_id_201 = hash[:data][:rooms][0][:id]
p room_id_201

# events_in_201 = hash[:data][:rooms][:events][0]
# p events_in_201

hash[:data][:events].each do |event|
  if event[:room_id] == 1 && event[:attendees] <= cap
    p "OK"
  end
end
