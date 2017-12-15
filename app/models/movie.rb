class Movie < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    u = User.find(self.user_id)
    [
      :title,
      [:title, u.slug],
      [:title, u.slug, :year]
    ]
  end

  before_create :create_sort_name
  before_save :create_search_name

  scope :sorted_list, -> { order(:sort_name, :year) }
  scope :recently_added, -> { order(created_at: :desc) }

  def self.get_titles(t,u)
    movie_array = []

    title_response = HTTParty.get('https://api.themoviedb.org/3/search/movie?api_key=' + ENV['TMDB_KEY'] + '&query=' + t)

    return nil if title_response['results'] == []

    title_response['results'].each do |movie|
      movie_response = HTTParty.get('https://api.themoviedb.org/3/movie/' + movie['id'].to_s + '?api_key=' + ENV['TMDB_KEY'] + '&append_to_response=credits,releases')
      year = movie_response['release_date'] != nil ? movie['release_date'].split('-').slice(0,1).join() : ''
      poster = movie_response['poster_path'] != nil ? 'https://image.tmdb.org/t/p/w342' + movie['poster_path'] : 'NA'
      backdrop = movie_response['backdrop_path'] != nil ? 'https://image.tmdb.org/t/p/original' + movie['backdrop_path'] : 'NA'
      new_movie = {actors: get_actors(movie_response), backdrop: backdrop, director: get_director(movie_response), display_title: movie['title'], genre: get_genres(movie_response), movie_rating: get_rating(movie_response), plot: movie['overview'], poster: poster, producer: get_producers(movie_response), runtime: get_runtime(movie_response), studio: get_studio(movie_response), title: movie['title'], tmdb_id: movie['id'], writer: get_writers(movie_response), year: year}
      movie_array << new_movie if movie_array.all? {|el| el[:year] != year || el[:director] != get_director(movie_response)}
    end
    movie_array.sort_by {|k| k[:year]}
  end

  private

    def create_search_name
      self.search_name = self.display_title.downcase
    end

    def create_sort_name
      self.sort_name = self.display_title.gsub(/^(The\b*\W|A\b*\W|An\b*\W)/, '')
    end

    def self.get_actors(r)
      actors = []
      r['credits']['cast'].each { |k| actors << k['name'] }
      actors.length != 0 ? actors.first(6).join(', ') : ''
    end

    def self.get_director(r)
      director = []
      r['credits']['crew'].each { |k| director << k['name'] if k['job'] == 'Director' }
      director.length != 0 ? director.first(6).join(', ') : ''
    end

    def self.get_genres(r)
      genres = []
      r['genres'].each { |k| genres << k['name'] } if r['genres']
      genres.length != 0 ? genres.first(2).join(', ') : ''
    end

    def self.get_producers(r)
      producers = []
      r['credits']['crew'].each { |k| producers << k['name'] if k['job'] == 'Producer' }
      producers.length != 0 ? producers.first(6).join(', ') : ''
    end

    def self.get_rating(r)
      rating = ''
      r['releases']['countries'].each { |k| rating = k['certification'] if k['iso_3166_1'] == 'US' } if r['releases']['countries'] != nil
      rating != '' ? rating : 'NR'
    end

    def self.get_runtime(r)
      time = r['runtime'].to_i
      hour = time.round / 60
      min = time % 60
      if hour == 1
        runtime = hour.to_s + ' hour, ' + min.to_s + ' minutes'
      elsif hour > 1
        runtime = hour.to_s + ' hours, ' + min.to_s + ' minutes'
      else
        runtime = min.to_s + ' minutes'
      end
    end

    def self.get_studio(r)
      studio = []
      r['production_companies'].each { |k| studio << k['name'] } if r['production_companies']
      studio.length != 0 ? studio.first(1).join() : ''
    end

    def self.get_writers(r)
      writers = []
      r['credits']['crew'].each { |k| writers << k['name'] if k['job'] == 'Screenplay' || k['job'] == 'Writer' }
      writers.length != 0 ? writers.first(6).join(', ') : ''
    end

end
