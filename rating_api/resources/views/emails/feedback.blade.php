<!DOCTYPE html>
<html>
<head>
    <title>Thank You for Your Feedback</title>
</head>
<body>
    <h1>Thank You for Your Feedback, {{ $rating->Name }}!</h1>
    <p>We appreciate you taking the time to provide your feedback.</p>
    <p>Rating: {{ $rating->rating }}</p>
    <p>Comment: {{ $rating->comment }}</p>
     <p> Name: {{ $rating->Name }}</p>
      <p>Email: {{ $rating->email }}</p>
       <p>Mobile: {{ $rating->Mobile }}</p>
        <p>Answers: {{ $rating->question1 }},{{ $rating->question2 }}</p>
    <p>We value your input and will use it to improve our services.</p>
</body>
</html>
