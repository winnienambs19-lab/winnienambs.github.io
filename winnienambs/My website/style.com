/* style.css */

*{
  margin:0;
  padding:0;
  box-sizing:border-box;
  font-family: Arial, sans-serif;
}

body{
  background:#fff8f0;
  color:#333;
}

/* Header */
header{
  display:flex;
  justify-content:space-between;
  align-items:center;
  padding:20px 50px;
  background:#ff7043;
  color:white;
}

.logo{
  display:flex;
  align-items:center;
  gap:15px;
}

.sun{
  width:50px;
  height:50px;
  background:linear-gradient(to top, orange, yellow);
  border-radius:50%;
  position:relative;
}

.sun::after{
  content:'';
  position:absolute;
  bottom:-10px;
  left:-10px;
  width:70px;
  height:20px;
  background:#ff7043;
  border-radius:50%;
}

nav a{
  text-decoration:none;
  color:white;
  margin-left:20px;
  font-weight:bold;
  transition:0.3s;
}

nav a:hover{
  color:#ffe082;
}

/* Hero */
.hero{
  height:80vh;
  background:url('https://images.unsplash.com/photo-1555396273-367ea4eb4db5') center/cover no-repeat;
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
  color:white;
}

.hero-text{
  background:rgba(0,0,0,0.6);
  padding:40px;
  border-radius:10px;
}

.hero-text h2{
  font-size:50px;
  margin-bottom:20px;
}

.hero-text p{
  font-size:20px;
  margin-bottom:20px;
}

.hero-text button{
  padding:12px 25px;
  border:none;
  background:#ff7043;
  color:white;
  font-size:18px;
  border-radius:5px;
  cursor:pointer;
}

.hero-text button:hover{
  background:#e64a19;
}

/* Menu */
.menu{
  padding:60px 40px;
  text-align:center;
}

.menu h2{
  font-size:40px;
  margin-bottom:40px;
  color:#ff7043;
}

.menu-container{
  display:grid;
  grid-template-columns:repeat(auto-fit, minmax(250px,1fr));
  gap:25px;
}

.menu-item{
  background:white;
  padding:25px;
  border-radius:10px;
  box-shadow:0 4px 10px rgba(0,0,0,0.1);
  transition:0.3s;
}

.menu-item:hover{
  transform:translateY(-5px);
}

.menu-item h3{
  color:#e64a19;
  margin-bottom:10px;
}

.menu-item p{
  margin-bottom:15px;
}

.menu-item span{
  font-weight:bold;
  color:#ff7043;
  font-size:18px;
}

/* About */
.about{
  background:#ffe0b2;
  padding:60px 40px;
  text-align:center;
}

.about h2{
  margin-bottom:20px;
  color:#e64a19;
}

/* Footer */
footer{
  background:#bf360c;
  color:white;
  text-align:center;
  padding:30px;
}

footer h3{
  margin-bottom:15px;
}