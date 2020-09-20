node { 
     checkout scm
	 docker.withRegistry('https://registry.hub.docker.com', 'DockerHub') {
	 
	  def customImage = docker.build("narenbabu/main:${env.BUILD_ID}")
	  
	  customImage.push()	
	 }
}
