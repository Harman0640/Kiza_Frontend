pipeline{
  agent any
  tools{
    nodejs 'nodejs'
  }
  stages{
    stage('Cloning The Project'){
      steps{
        git url: 'https://github.com/Harman0640/Kiza_Backend.git' , branch: 'main' , credentialsId: 'testkey'
      }
    }
    stage('Creating Docker Image'){
      steps{
        sh 'docker build -t back_file .'
      }
    }
    stage('Creating Docker Container){
      steps{
        sh 'docker run -d -p 3004:3004 back_file'
      }
    }
  }
}
