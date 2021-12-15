#!/usr/bin/env groovy 

pipeline { {
parameters 

  string(
   name: 'dbname_parameter',
   defaultValue: '',
   description: 'Substitute for dbname'
  )
  string(
      name: 'dbname_ssm',
      defaultValue: 'dummy',
      description: 'Substitute for SSM Parameter'
  )
}
  agent any
  stages {
    stage('stage 0'){
        steps {
            if (params.dbname_parameter){
                echo 'The db parameter is set to be empty retreving value from SSM'
            } else if (params.dbname_ssm == 'dummmy') {
                echo 'There is no valid value in SSM raise exception'
                throw 
            }
            else {
                echo 'Using the value set by SSM'
            }
        }
    }  
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