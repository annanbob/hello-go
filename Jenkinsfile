node { 
     checkout scm
	  
	  withCredentials([usernameColonPassword(credentialsId: 'b692d175-3529-436d-8fbc-6ed58aecc7eb', variable: 'docker')]) {
        def customImage = docker.build("narenbabu/main:${env.BUILD_ID}")
	  
	  customImage.push()
}
