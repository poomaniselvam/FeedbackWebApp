<!DOCTYPE html>
<html>
<head>
    <title>Thank You for Your Feedback</title>
</head>
<body>
    <h1>Thank You for Your Feedback, <?php echo e($rating->Name); ?>!</h1>
    <p>We appreciate you taking the time to provide your feedback.</p>
    <p>Rating: <?php echo e($rating->rating); ?></p>
    <p>Comment: <?php echo e($rating->comment); ?></p>
     <p> Name: <?php echo e($rating->Name); ?></p>
      <p>Email: <?php echo e($rating->email); ?></p>
       <p>Mobile: <?php echo e($rating->Mobile); ?></p>
        <p>Answers: <?php echo e($rating->question1); ?>,<?php echo e($rating->question2); ?></p>
    <p>We value your input and will use it to improve our services.</p>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\rating_api\resources\views/emails/feedback.blade.php ENDPATH**/ ?>