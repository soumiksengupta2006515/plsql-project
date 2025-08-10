pipeline {
    agent any

    environment {
        DB_USER = 'my_jenkins'
        DB_PASS = 'my_jenkins'
        DB_HOST = 'localhost'
        DB_NAME = 'orclpdb'
    }

    stages {
        stage('Clone GitHub Repo') {
            steps {
                git credentialsId: 'github-token', url: 'https://github.com/soumiksengupta2006515/plsql-project.git', branch: 'master'
            }
        }

        stage('Run SQL Scripts') {
            steps {
                script {
                    def sqlFiles = ['test_db_connection.sql']
                    for (file in sqlFiles) {                        
						sh "sqlplus -S my_jenkins/my_jenkins@//localhost:1521/orclpdb @tests/${file}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo '✅ SQL scripts executed successfully!'
        }
        failure {
            echo '❌ SQL execution failed.'
        }
    }
}