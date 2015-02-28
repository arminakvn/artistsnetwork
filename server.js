// Generated by CoffeeScript 1.7.1
(function() {
  var Artist, ArtistEdges, ArtistEdgesSchema, ArtistNodes, ArtistNodesSchema, ArtistSchema, Bios, BiosSchema, DateEdgesSchema, DateNodesSchema, LocEdgesSchema, LocNodesSchema, OrgEdgesSchema, OrgNodesSchema, Schema, app, config, express, login, mongoOptions, mongoose, port, uristring;

  express = require('express');

  mongoose = require('mongoose');

  config = {
    'db': 'artistdb/',
    'host': '127.0.0.1',
    'user': '',
    'pw': '',
    'port': 27017
  };

  port = config.port.length > 0 ? ':' + config.port : '';

  login = config.user.length > 0 ? config.user + ':' + config.pw + '@' : '';

  uristring = 'mongodb://127.0.0.1:27017/artistdb';

  console.log('connection');

  mongoOptions = {
    db: {
      safe: true
    }
  };

  mongoose.connect(uristring, function(err, res) {
    if (err) {
      console.log('ERROR connecting to: ' + uristring + '. ' + err);
    } else {
      console.log('Successfully connected to: ' + uristring);
    }
  });

  exports.mongoose = mongoose;

  app = express();

  Schema = mongoose.Schema;

  BiosSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Name: String,
    FirstParagraph: String
  }, {
    collection: 'samplebios'
  });

  ArtistSchema = new Schema({
    _id: Schema.Types.ObjectId,
    source: String,
    group: Number,
    target: String,
    lat: String,
    long: String
  }, {
    collection: 'artists'
  });

  ArtistNodesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Id: String,
    type: String
  }, {
    collection: 'armorynode'
  });

  ArtistEdgesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    source: String,
    target: String,
    edgetype: String
  }, {
    collection: 'armoryedge'
  });

  OrgNodesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Id: String,
    type: String
  }, {
    collection: 'orgnode'
  });

  OrgEdgesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Source: String,
    Target: String
  }, {
    collection: 'orgedge'
  });

  LocNodesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Id: String,
    type: String
  }, {
    collection: 'locnode'
  });

  LocEdgesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Source: String,
    Target: String
  }, {
    collection: 'locedge'
  });

  DateNodesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Id: String,
    type: String
  }, {
    collection: 'datenode'
  });

  DateEdgesSchema = new Schema({
    _id: Schema.Types.ObjectId,
    Source: String,
    Target: String
  }, {
    collection: 'dateedge'
  });

  ArtistSchema.index({
    source: 1,
    group: 1
  });

  BiosSchema.methods.findLimited = function(cb) {
    var query;
    query = this.model('Bios').find({});
    query.limit();
    return query.exec(cb);
  };

  ArtistSchema.methods.findLimited = function(cb) {
    var query;
    query = this.model('Artist').find({});
    query.limit(2000);
    return query.exec(cb);
  };

  ArtistSchema.methods.findByTarget = function(cb) {
    var query;
    query = this.model('Artist').find({});
    query.where('target', this.target);
    query.limit();
    return query.exec(cb);
  };

  ArtistSchema.methods.findBySource = function(cb) {
    var query;
    query = this.model('Artist').find({});
    console.log(query);
    query.where('source', this.source);
    query.limit();
    return query.exec(cb);
  };

  ArtistNodesSchema.methods.findLimited = function(cb) {
    var query;
    query = this.model('ArtistNodes').find({});
    query.limit();
    return query.exec(cb);
  };

  ArtistSchema.methods.findByGroup = function(cb) {
    var query;
    query = this.model('Artist').find({});
    query.where('group', this.group);
    query.limit();
    return query.exec(cb);
  };

  ArtistEdgesSchema.methods.findLimited = function(cb) {
    var query;
    query = this.model('ArtistEdges').find({});
    query.limit(200);
    return query.exec(cb);
  };

  mongoose.model('Bios', BiosSchema);

  mongoose.model('Artist', ArtistSchema);

  mongoose.model('ArtistNodes', ArtistNodesSchema);

  mongoose.model('ArtistEdges', ArtistEdgesSchema);

  Bios = mongoose.model('Bios');

  Artist = mongoose.model('Artist');

  ArtistNodes = mongoose.model('ArtistNodes');

  ArtistEdges = mongoose.model('ArtistEdges');

  exports.findAll = function(req, res) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    Artist.find({}, function(err, results) {
      return res.send(results);
    });
  };

  exports.findById = function() {};

  exports.add = function() {};

  exports.update = function() {};

  exports["delete"] = function() {};

  app.get('/bios', function(req, res) {
    var bios;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    bios = Bios({});
    bios.findLimited(function(err, bios) {
      return res.json(bios);
    });
  });

  app.get('/artists', function(req, res) {
    var artist;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist = Artist({});
    artist.findLimited(function(err, artist) {
      return res.json(artist);
    });
  });

  app.get('/armorynodes', function(req, res) {
    var artist_nodes;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist_nodes = ArtistNodes({});
    artist_nodes.findLimited(function(err, artist_nodes) {
      return res.json(artist_nodes);
    });
  });

  app.get('/armoryedges', function(req, res) {
    var artist_edges;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist_edges = ArtistEdges({});
    artist_edges.findLimited(function(err, artist_edges) {
      return res.json(artist_edges);
    });
  });

  app.get('/artstsby/:t', function(req, res) {
    var artist;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist = new Artist({
      target: req.params.t
    });
    artist.findByTarget(function(err, artist) {
      console.log(artist);
      Artist.findById(artist[0]['_id'], function(err, docs) {
        var each;
        if (!err) {
          each = docs;
          return res.json(each);
        } else {
          return console.log(err);
        }
      });
    });
  });

  app.get('/artistsbygroup/:g', function(req, res) {
    var artist;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist = new Artist({
      group: req.params.g
    });
    artist.findByGroup(function(err, artist) {
      console.log(artist);
      return res.json(artist);
    });
  });

  app.get('/artistsbysource/:source', function(req, res) {
    var artist;
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'X-Requested-With');
    artist = new Artist({
      source: req.params.source
    });
    artist.findBySource(function(err, artist) {
      return res.json(artist);
    });
  });

  exports["import"] = function(req, res) {
    Artist.create({
      'name': 'Ben',
      'band': 'DJ Code Red',
      'instrument': 'Reason'
    }, function(err) {
      if (err) {
        return console.log(err);
      }
      return res.send(202);
    });
  };

  app.listen(3001, function() {
    console.log('%s listening at %s', app.name, app.url);
  });

}).call(this);
