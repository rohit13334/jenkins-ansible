pipeline {
    agent any

    environment {
        GITHUB_REPO = 'https://github.com/rohit13334/jenkins-ansible.git'   // Replace with your actual GitHub repo
        TARGET_HOST = '98.81.117.181' // Replace with the host you want to target, or pass it as a parameter
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Clone the repository from GitHub
                    git url: "${GITHUB_REPO}", branch: 'main'
                }
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                script {
                    // Run the Ansible playbook by calling the shell script
                    // Here, we pass TARGET_HOST as the first argument
                    sh './scripts/run_ansible_playbook.sh ${TARGET_HOST}'
                }
            }
        }
    }

    post {
        always {
            // Clean up after the job (if necessary)
            echo 'Cleaning up'
        }
    }
}
