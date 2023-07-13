<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mr. Camel</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');

    body {
      margin: 0;
      box-sizing: border-box;
    }

    .container {
      line-height: 150%;
    }

    .header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px;
      background-color: #e9e9e9;
    }

    .header h1 {
      color: #222222;
      font-size: 30px;
      font-family: 'Pacifico', cursive;
    }

    .header .social a {
      padding: 0 5px;
      color: #222222;
    }

    .left {
      float: left;
      width: 180px;
      margin: 0;
      padding: 1em;
    }

    .content {
      margin-left: 190px;
      border-left: 1px solid #d4d4d4;
      padding: 1em;
      overflow: hidden;
    }

    ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      font-family: sans-serif;
    }

    li a {
      display: block;
      color: #000;
      padding: 8px 16px;
      text-decoration: none;
    }

    li a.active {
      background-color: #84e4e2;
      color: white;
    }

    li a:hover:not(.active) {
      background-color: #29292a;
      color: white;
    }

    table {
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
      margin: 30px 0;
    }

    td,
    th {
      border: 1px solid #dddddd;
      padding: 8px;
    }

    tr:nth-child(1) {
      background-color: #84e4e2;
      color: white;
    }

    tr td i.fas {
      display: block;
      font-size: 35px;
      text-align: center;
    }

    .footer {
      padding: 55px 20px;
      background-color: #2e3550;
      color: white;
      text-align: center;
    }
  </style>
</head>

<body>
  <div class="container">
    <header class="header">
      <h1>Mr. Camel</h1>
      <div class="social">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
      </div>
    </header>
    <aside class="left">
      <img src="./assets/html/mr-camel.jpg" width="160px" />
      <ul>
        <li><a class="active" href="#home">Home</a></li>
        <li><a href="#career">Career</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#about">About</a></li>
      </ul>
      <br><br>
      <p>"Do something important in life. I convert green grass to code."<br>- Mr Camel</p>
    </aside>
    <main class="content">
      <h2>About Me</h2>
      <p>I don't look like some handsome horse, but I am a real desert king. I can survive days without water.</p>
      <h2>My Career</h2>
      <p>I work as a web developer for a company that makes websites for camel businesses.</p>
      <hr><br>
      <h2>How Can I Help You?</h2>
      <table>
        <tr>
          <th>SKILL 1</th>
          <th>SKILL 2</th>
          <th>SKILL 3</th>
        </tr>
        <tr>
          <td><i class="fas fa-broom"></i></td>
          <td><i class="fas fa-archive"></i></td>
          <td><i class="fas fa-trailer"></i></td>
        </tr>
        <tr>
          <td>Cleaning kaktus in your backyard</td>
          <td>Storing some fat for you</td>
          <td>Taking you through the desert</td>
        </tr>
        <tr>
      </table>
      <form>
        <label>Email: <input type="text" name="email"></label><br>
        <label> Mobile: <input type="text" name="mobile"> </label><br>
        <textarea name="comments" rows="4">Enter your message</textarea><br>
        <input type="submit" value="Submit" /><br>
      </form>
    </main>
    <footer class="footer">&copy; Copyright Mr. Camel</footer>
  </div>
</body>

</html>
▶ Try it

Here is the result of the code above:

HTML web page example 1
Stay Ahead, Learn More

Sample HTML code for homepage
How to use CSS in HTML
HTML code for registration form with validation
HTML Home Page Example 2
This is the second example of an HTML web page. This is a simple error 404 page which is shown when the user tries to access a page that does not exist.

This is a very simple webpage that shows the error 404 page on the screen and gives a link to return to the homepage.

To design an error 404 page you need to use the following steps:

Create a div element that covers the whole page set height: 100vh.
Give it a background image that suits the 404 error.
Style your basic text and link elements with CSS.
Example 2

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Error 404 page</title>
  <style>
    body {
      margin: 0;
      box-sizing: border-box;
    }

    .container {
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
      background: linear-gradient(to right, rgba(0, 0, 0, .5), rgba(0, 0, 0, .1)), url('https://images.unsplash.com/photo-1595624871930-6e8537998592?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
    }

    h1 {
      font-size: 10rem;
      color: #fff;
      text-transform: uppercase;
      font-weight: 700;
      margin-bottom: 1rem;
    }

    h2 {
      font-size: 2rem;
      color: #fff;
      text-transform: uppercase;
      font-weight: 700;
      margin-bottom: 1rem;
    }

    p {
      font-size: 1.5rem;
      color: #fff;
      font-weight: 700;
      margin-bottom: 1rem;
    }

    a {
      padding: 15px 20px;
      background: #52caee;
      font-size: 1rem;
      text-decoration: none;
      color: #333333;
      border-radius: .25rem;
      box-shadow: 0 0 20px rgba(255, 255, 255, 0.808)
    }
  </style>
</head>

<body>
  <div class="container">
    <h1>404</h1>
    <h2>Page not found</h2>
    <p>The page you are looking for does not exist.</p>
    <p><a href="#">Visit Homepage</a></p>
  </div>
</body>

</html>
▶ Try it
Here is the result of the code in example 2.

HTML web page example 2
HTML Home Page Example 3
This is the third example of an HTML web page. This is a simple newsletter signup page.

Here is the list of steps to create a newsletter signup page:

First, we need to create the HTML structure of the page. We will use the <main> tag to wrap the content of the page. Then, we will create two sections: one for the intro and one for the sign-up form.
Next, we will style the page using CSS. We will use the display: flex property to align the content of the page. We will also use the min-height property to make sure that the page is always fully visible.
Then, we will style the intro section.
Next, we will style the sign-up section.
Finally, we will style the form. Look at the complete code below to see how we did it.
Example 3

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sample HTML Code - NewsLetter Form</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

    body {
      display: flex;
      justify-content: center;
      padding: 3rem 0;
      font-family: "Poppins", sans-serif;
      font-size: 1rem;
      color: white;
      background-color: #ff7a7a;
    }

    main {
      max-width: 350px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      width: 100%;
      margin-bottom: 3rem;
    }

    .title {
      padding: 1rem;
      font-size: 1.75rem;
    }

    .sign-up {
      width: 100%;
    }

    .sign-up-para {
      padding: 1rem 5rem;
      margin-bottom: 1.75rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(0 0 0/0.15);
      background-color: #7138cc;
      text-align: center;
    }

    .sign-up-form {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 1.2rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(0 0 0/0.15);
      color: #b9b6d3;
      background-color: white;
    }

    .form-input {
      width: 100%;
      margin-bottom: 1em;
      position: relative;
    }

    .form-input span {
      position: absolute;
      top: 10%;
      right: 0;
      padding: 0 0.65em;
      border-radius: 50%;
      background-color: #ff7a7a;
      color: white;
      display: none;
    }

    .form-input.warning span {
      display: inline-block;
    }

    .form-input input {
      width: calc(100% - 20px);
      padding: 10px;
      border: 2px solid rgba(185, 182, 211, 0.25);
      border-radius: 0.5em;
      font-weight: 600;
      color: #3e3c49;
    }

    .form-input input:focus {
      outline: none;
      border: 2px solid #b9b6d3;
    }

    .form-input.warning input {
      border: 2px solid #ff7a7a;
    }

    .form-input p {
      margin: 0.2em 0.75em 0 0;
      display: none;
      font-size: 0.75rem;
      text-align: right;
      font-style: italic;
      color: #ff7a7a;
    }

    .form-input.warning p {
      display: block;
    }

    .submit-btn {
      cursor: pointer;
      width: 100%;
      padding: 1em;
      margin-bottom: 1em;
      border: none;
      border-bottom: 5px solid #31bf81;
      border-radius: 0.5em;
      background-color: #38cc8c;
      color: white;
      font-weight: 600;
      text-transform: uppercase;
    }

    .submit-btn:hover {
      background-color: #5dd5a1;
    }

    .form-term {
      margin-bottom: 0.75em;
      font-size: 0.8rem;
      text-align: center;
    }

    .form-term span {
      font-weight: 700;
      color: #ff7a7a;
    }
    
    @media (min-width: 768px) {
      body {
        align-items: center;
        min-height: 100vh;
      }

      main {
        max-width: 100vw;
        flex-direction: row;
        justify-content: center;
      }

      .intro {
        align-items: flex-start;
        text-align: left;
        width: 45%;
        margin-right: 1rem;
      }

      .title {
        padding: 0;
        margin-bottom: 2rem;
        font-size: 3rem;
        line-height: 1.25em;
      }

      .sign-up {
        width: 45%;
      }

      .sign-up-form {
        padding: 1.75rem;
      }

      .sign-up-form input {
        padding-left: 1.5em;
      }
    }
  </style>
</head>

<body>
  <main>
    <!-- intro section -->
    <section class="intro">
      <h1 class="title">Black Thursday Deals</h1>
      <p>Get up to 50% off on all our products and services. Hurry up, the offer ends in 24 hours.</p>
    </section>

    <!-- sign-up section -->
    <section class="sign-up">
      <p class="sign-up-para">Sign up for our newsletter and get 10% off your first purchase</p>
      <!-- the form itself -->
      <form class="sign-up-form">
        <div class="form-input">
          <input type="text" name="first-name" id="first-name" placeholder="First Name" required>
          <span>!</span>
          <p class="warning">First name cannot be empty</p>
        </div>

        <div class="form-input">
          <input type="text" name="last-name" id="last-name" placeholder="Last Name" required>
          <span>!</span>
          <p class="warning">Last name cannot be empty</p>
        </div>

        <div class="form-input">
          <input type="email" name="email" id="email" placeholder="Email Address" required>
          <span>!</span>
          <p class="warning">Looks like this is not an email</p>
        </div>

        <div class="form-input">
          <input type="Password" name="Password" id="Password" placeholder="Password" required>
          <span>!</span>
          <p class="warning">Password cannot be empty</p>
        </div>

        <input class="submit-btn" type="submit" value="Claim your offer">
        <p class="form-term">By clicking the button, you are agreeing to our <span>Terms and Services</span> </p>
      </form>
    </section>
  </main>
</body>

</html>
