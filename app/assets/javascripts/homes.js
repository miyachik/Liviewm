// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//= require livephotoskit/livephotoskit
//= require superagent/superagent

// A Player built from a new DIV:
function createLivePhotots() {
  var root = window.location.origin
  var articles;
  superagent
    .get('http://localhost:3000' + '/api/articles')
    .end(function(err, res){
      articles = res.body;
  });
  console.log(articles)
  console.log(window.location.origin)
  articles.forEach(function(){
    var player = LivePhotosKit.Player();
    // A Player built from a pre-existing element:
    player.photoSrc = 'https://s3-ap-northeast-1.amazonaws.com/liviewm-dev' +   article.image_path;

    player.videoSrc = 'https://s3-ap-northeast-1.amazonaws.com/liviewm-dev' +   article.movie_path;
    player.style.height = '320px';
    player.style.width = '180px';
    document.body.appendChild(player);
  });
}

