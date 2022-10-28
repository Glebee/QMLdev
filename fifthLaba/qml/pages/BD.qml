import QtQuick 2.0
import QtQuick.LocalStorage 2.0
import Sailfish.Silica 1.0
Item {
    property var db;
    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("spisok", "1.0");
        createSpisokTable();
    }
    function createSpisokTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS spisok (
                id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "target TEXT NOT NULL);");
        });
    }
    function retrieveSpisok(callback) {
        db.readTransaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM spisok;");
            callback(result.rows);
        });
    }
    function insertSpisok(target) {
        db.transaction(function(tx) {
           tx.executeSql("INSERT INTO spisok (target) VALUES(?);", [target]);
        });
    }
    function updateSpisok(id, target) {
        db.transaction(function(tx) {
            tx.executeSql("UPDATE spisok SET target = ? WHERE id = ?;", [target, id]);
        });
    }
    function deleteSpisok(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM spisok WHERE id = ?;", [id]);
        }) }}
