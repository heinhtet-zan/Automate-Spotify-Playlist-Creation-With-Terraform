resource "spotify_playlist" "playlist" {
  name        = "Songs"
  description = "This playlist was created by Terraform"
  tracks = ["1aOl53hkZGHkl2Snhr7opL"]
}

data "spotify_search_track" "deanlewis" {
  artist = "Dean Lewis"
}

resource "spotify_playlist" "DL" {
  name = "Terraform Spotify Playlist"
  tracks = [data.spotify_search_track.deanlewis.tracks[0].id,
  data.spotify_search_track.deanlewis.tracks[1].id,
  data.spotify_search_track.deanlewis.tracks[2].id]
}