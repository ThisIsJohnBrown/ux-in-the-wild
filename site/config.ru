use Rack::Static,
  :urls => ["/images", "/js", "/css", "/reveal.js", "/make-art-not-apps", "/lib"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}