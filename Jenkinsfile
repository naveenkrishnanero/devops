#!/usr/bin/env groovy 

pipeline {
  agent any
  stages {
    stage('stage1') {
      steps {
        echo 'First PipeLine'
        script {
           def stage1_var = "Variable from stage1"
           env.stage1_var = stage1_var
        }
      }
    }
     stage('stage2')
     {
         steps {
             echo "This is the stage1 variable being printed in stage2 : ${env.stage1_var}"
         }
     }
  }
}