[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">
    <form class="vizitka--nova" method="post" action="/nova">
        <div class="jmeno">
            <label for="jmeno">Jméno:</label>
            <input id="jmeno" name="jmeno" type="text" value="${vizitka.jmeno!}" required>
        </div>
        <div class="firma">
            <label for="firma">Firma:</label>
            <input id="firma" name="firma" type="text" value="${vizitka.firma!}" required>
        </div>
        <div class="udaje">
            <div class="adresa">
                <label for="ulice">Ulice:</label>
                <input id="ulice" name="ulice" type="text" value="${vizitka.ulice!}" required>
                <label for="obecPsc">Obec a PSČ:</label>
                <input id="obecPsc" name="obecPsc" type="text" value="${vizitka.obecPsc!}" required>
            </div>
            <div class="kontakty">
                <label for="email">Email:</label>
                <input id="email" name="email" type="email" value="${vizitka.email!}">
                <label for="telefon">Telefon:</label>
                <input id="telefon" name="telefon" type="tel" value="${vizitka.telefon!}">
                <label for="web">Web:</label>
                <input id="web" name="web" type="url" value="${vizitka.web!}">
            </div>
        </div>
        <input type="submit" value="Přidat vizitku">
    </form>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>

</div>
</body>
</html>