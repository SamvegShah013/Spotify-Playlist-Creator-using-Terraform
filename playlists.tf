resource "spotify_playlist" "bollywood" {
    name = "Bollywood"
    tracks = [ "4vHRQnzGcKEtqsLH70tAms" ]
}

data "spotify_search_track" "Eminem" {
    artist = "Eminem"
    limit = 10
}

resource "spotify_playlist" "slimShady" {
  name   = "slimShady"

  tracks = [
    for track in data.spotify_search_track.Eminem.tracks : track.id
  ]
}
