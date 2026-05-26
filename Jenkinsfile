pipeline{
  agent any
  tools{
    nodejs 'nodejs'
  }
  stages{
    stage('Cloning The Project'){
      steps{
        git url: 'https://github.com/Harman0640/Kiza_Frontend.git' , branch: 'main' , credentialsId: 'testkey'
      }
    }
    stage('Creating Docker Image'){
      steps{
        sh 'docker build -t front_file .'
      }
    }
    stage('Creating Docker Container'){
      steps{
        sh 'docker run -d -p 4200:4200 front_file'
      }
    }
  }
}
