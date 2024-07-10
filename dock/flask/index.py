from flask import Flask, jsonify
import psycopg2
from psycopg2 import Error

DB_HOST = 'postgres'
DB_NAME = 'test'
DB_USER = 'test'
DB_PASSWORD = 'test'

app = Flask(__name__)


@app.route('/<int:id>', methods=['GET'])
def get_game(id):
    try:
        connection = psycopg2.connect(
            user=DB_USER,
            password=DB_PASSWORD,
            host=DB_HOST,
            database=DB_NAME
        )

        cursor = connection.cursor()

        cursor.execute(f"SELECT * FROM table2 WHERE id = {id}")
        game = cursor.fetchone()
        
        cursor.close()
        connection.close()

        return jsonify({'game': game}), 200

    except (Exception, Error) as error:
        return jsonify({'error': str(error)}), 500

if __name__ == '__main__':
    app.run(debug=True, host = '0.0.0.0')