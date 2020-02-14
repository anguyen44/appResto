var express = require('express');
var app  = express();

var mysql = require('mysql');
var bodyParser = require('body-parser');
const nodemailer = require("nodemailer");


app.use(bodyParser.json({type:'application/json'}));
app.use(bodyParser.urlencoded({extended:true}));

var con = mysql.createConnection({
 
    host:'localhost',
    port:'3306',
    user:'root',
    password:'', //empty for window
    database: 'dev-restodujour-hanae'

});

var server = app.listen(4000, function(){
  var host = server.address().address
  var port = server.address().port
  console.log("start");

});

con.connect(function(error){
  if(error) console.log(error);
  else console.log("connected");
});


app.get('/utilisateursrole', function(req, res){
    con.query('select * from utilisateurs U join join_utilisateursroles_utilisateurs J on U.id = J.utilisateurs_id join utilisateursroles UR on UR.id = J.utilisateursRoles_id', function(error, rows, fields){
          if(error) console.log(error);
          else{
              // console.log(rows);
              res.send(rows);
          }
    });
  });

  app.get('/utilisateurs', function(req, res){
    con.query('select * from utilisateurs', function(error, rows){
          if(error) console.log(error);
          else{
              // console.log(rows);
              res.send(rows);
          }
    });
  });

  app.put('/utilisateursUpdate/:id', function(req, res){
    const data = req.body;
    console.log(req.params.id);
    con.query('UPDATE `utilisateurs` SET `email`=? where `id`=?', [req.body.email, req.params.id], function (error, results, fields) {
      if (error) throw error;
      else res.json({
        status:'success',
      });
    });
  });

  app.put('/menuUpdate/:menuId', function(req, res){
    const data = req.body;

    console.log("hfkjshdfkjdsaf",req.params.menuId);
    con.query('UPDATE `menusdujour` SET `restaurant_id`=? ,`entree1`=? ,`entree2`=? ,`plat1`=?, `plat2`=? ,`dessert1`=? ,`dessert2`=? where `restaurant_id`=?', [req.body.restaurant_id,req.body.entree1,req.body.entree2,req.body.plat1,req.body.plat2,req.body.dessert1,req.body.dessert2, req.body.restaurant_id], function (error, results, fields) {
      if (error) throw error;
      else res.json({
        status:'success',
      });
    });
  });


  app.put('/restoUpdate/:restaurants_id', function(req, res){
    const data = req.body;
    console.log("id resto",req.params.restaurant_id);

    console.log("hfkjshdfkjdsaf",req.params.restaurants_id);
    con.query('UPDATE `restaurants` SET `nom`=? ,`email`=? ,`telephone`=? ,`adressePostale`=? where `id`=?', [req.body.nom,req.body.email,req.body.adressePostale,req.body.num_telephone,req.params.restaurants_id], function (error, results, fields) {
      if (error) throw error;
      else res.json({
        status:'success',
      });
    });
  });
  

  app.post('/signup',function (req, res){
    //console.log('I got the datas');
    //console.log(req.body);

    const data = req.body;

    res.json({
      status:'success',
      username: data.username,
      password: data.password
    });
    // var postData  = req.body;
    con.query('INSERT INTO utilisateurs SET ?', data, (error, results) => {
      if (error) console.log(error);
      else{
        res.end(JSON.stringify(results));}
    });
  });

  app.post('/createRestaurant',function (req, res){
    //console.log('I got the datas');
    //console.log(req.body);

    const data = req.body;

    
    // var postData  = req.body;
    con.query('INSERT INTO restaurants SET ?', data, (error, results) => {
      if (error) console.log(error);
      else{
    //    res.send(JSON.stringify(results, null, 4));
    
      res.json(results);
      res.end(JSON.stringify(results));
      }
        
        
    });
  });


  app.post('/createMenu',function (req, res){
    console.log('I got the datas');
    //console.log(req.body);

    const data = req.body;

    
    // var postData  = req.body;
    con.query('INSERT INTO menusdujour SET ?', data, (error, results) => {
      if (error) console.log(error);
      else{
    //    res.send(JSON.stringify(results, null, 4));
    
      res.json(results);
      res.end(JSON.stringify(results));
      }
        
        
    });
  });

  app.post('/signuprole',function (req, res){
    const data = req.body;

    
    // var postData  = req.body;
    con.query('INSERT INTO join_utilisateursroles_utilisateurs SET ?', data, (error, results) => {
      if (error) {
        console.log(error)
        res.json({
          status:'failure',
        });
      }else{
        res.json({
          status:'success',
        });
       // console.log(results);
        res.end(JSON.stringify(results));}
    });
  });

  app.post('/signupresto',function (req, res){
    const data = req.body;
    console.log("ajfksjdflkjlkfsajda");

    
    // var postData  = req.body;
    con.query('INSERT INTO join_restaurants_utilisateurs SET ?', data, (error, results) => {
      if (error) {
        console.log(error)
        res.json({
          status:'failure',
        });
      }else{
        res.json({
          status:'success',
        });
       // console.log(results);
        res.end(JSON.stringify(results));}
    });
  });

  app.post('/uploadImage',function (req, res){
    //console.log(req.body.img);
    res.json({
      message: 'success!',
    });
    

  
  });

  app.get('/restaurants', function(req, res){
    con.query('select * from restaurants', function(error, rows, fields){
          if(error) console.log(error);
          else{
              //console.log("rows of restaurants: ",rows);
              res.send(rows);
          }
    });
  });

  app.get('/getRestaurantByUserId/:idUser', function(req, res){
    let idUser = req.params.idUser;
    console.log(idUser);
    

    con.query('select * from restaurants R join join_restaurants_utilisateurs J on R.id = J.restaurants_id where J.utilisateurs_id = '+idUser, function(error, rows, fields){
      if(error) console.log(error);
      else{
         //console.log("rows of restaurantsMenu: ",rows);
         res.send(rows);
      }
    });
  
    });
  
  app.get('/getUserByName', function(req, res){
    let qname = req.query.username;

    con.query("select * from utilisateurs U join join_utilisateursroles_utilisateurs J on U.id = J.utilisateurs_id join utilisateursroles UR on UR.id = J.utilisateursRoles_id where U.username = '"+qname+"'", function(error, rows, fields){
      if(error) console.log(error);
      else{
          // console.log(rows);
          res.send(rows);
      }
    });

  app.get("/getMenuByUserId/:userId", function(req, res){
    let id = req.params.userId;
    console.log(id);



    con.query('select * from menusdujour M join join_restaurants_utilisateurs J on M.restaurant_id= J.restaurants_id where J.utilisateurs_id = '+id, function(error, rows, fields){
      if(error) console.log(error);
      else{
         //console.log("rows of restaurantsMenu: ",rows);
         res.send(rows);
      }
    });
    
    });


    // console.log(qname);
    // console.log("Alo");
    // res.json({
    //   message: 'success!',
    // });
  });

  app.get('/restaurantsMenu', function(req,res){
       con.query('select * from restaurants R join menusdujour M on R.id = M.restaurant_id join medias U on U.restaurant_id = M.restaurant_id', function(error, rows, fields){

      if(error) console.log(error);
      else{
         //console.log("rows of restaurantsMenu: ",rows);
         res.send(rows);
      }
    });
  });


   // pour la page de ensavoir plus
   app.get('/joursouvertures/:restaurant_id', function(req,res){
    //   var id = req.params.restaurant_id;
    con.query('select * from horairesouverture O join restaurants R on O.restaurant_id = R.id join menusdujour M on M.restaurant_id = R.id join medias S on S.restaurant_id = M.restaurant_id where R.id =' +req.params.restaurant_id,
    //con.query('select * from horairesouverture where restaurant_id ='+req.params.restaurant_id,
function(error, rows, fields){

      if(error) console.log(error);
      else{

         console.log("***************rows of horaires: ",rows);
        // console.log(id);
         res.send(rows);
      }
    });
  })


  /*

// async..await is not allowed in global scope, must use a wrapper
async function sendMail() {
  // Generate test SMTP service account from ethereal.email
  // Only needed if you don't have a real mail account for testing
 
  // create reusable transporter object using the default SMTP transport
  let transporter = nodemailer.createTransport({
    service: 'gmail',
    host: "smtp.gmail.com",
    port: 465,
    secure: true, // true for 465, false for other ports
    auth: {
      user: "anh.nguyenphp@gmail.com", // generated ethereal user
      pass:  "01678913418"// generated ethereal password
    }
  });

  // send mail with defined transport object
  let info = await transporter.sendMail({
    from: '"Anh Nguyen 👻" <anh.nguyenphp@gmail.com>', // sender address
    to: "anhnguyennguyen0404@gmail.com", // list of receivers
    subject: "Hello ✔", // Subject line
    text: "Hello world?", // plain text body
    html: "<b>Hello world?</b>" // html body
  });
}

//sendMail().catch(console.error);
*/
