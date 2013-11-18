json.array!(@midis) do |midi|
  json.extract! midi, :title, :author
  json.url midi_url(midi, format: :json)
end
