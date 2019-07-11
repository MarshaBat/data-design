<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<title>Use Case - Data Design Project</title>
	</head>
	<body>
		<h1>Conceptual Model - Data Design Project</h1>
		<h2>Phase 1 Assignment</h2>

		<div>
			<h3>Entities & Attributes - Conceptual Model</h3>
			<p>Profile</p>
				<ul>
					<li>profileId (primary key)</li>
					<li>profileUsername</li>
					<li>profilePassword</li>
					<li>profileEmail</li>
				</ul>

			<p>Photo</p>
			<ul>
				<li>photoId (primary key)</li>
				<li>photoProfileId (foreign key)</li>
				<li>photoContent</li>
				<li>photoDate</li>
				<li>photoTime</li>
			</ul>

			<p>Relations</p>
				<ul>
					<li>One profile can post many photos (1 to n)</li>
				</ul>

		</div>

		<div>
			<img src="erd.JPG" alt="Picture of ERD">
		</div>


		<div>
			<p>Return to
				<a href = "index.php">Home</a>
				<a href ="persona-instagram.php">Persona</a>
				<a href ="user-story.php">User Story</a>
				<a href ="use-case.php">Use Case or Interaction Flow</a>
				<a href="conceptual-model.php">Conceptual Model</a>

			</p>
		</div>

	</body>

</html>