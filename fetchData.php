<?php
header('Access-Control-Allow-Origin: *'); // Zezwól na żądania z dowolnego źródła
header('Content-Type: application/json; charset=utf-8'); // Ustawienie nagłówka Content-Type na JSON

// Dane dostępowe do bazy danych
$host = 'localhost';
$dbname = 'praktyki';
$username = 'root';
$password = '';

try {
    // Utworzenie połączenia z bazą danych przy użyciu PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    // Ustawienie atrybutu, aby wyjątki były rzucane w przypadku błędu
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Zapytanie SQL do pobrania wszystkich postów
    $sql = "SELECT id, title, content FROM post";
    $stmt = $pdo->query($sql);

    // Pobranie wyników zapytania
    $post = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Zwrócenie wyników w formacie JSON
    echo json_encode($post);
} catch (PDOException $e) {
    // Zwrócenie błędu, jeśli coś pójdzie nie tak
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);
}
