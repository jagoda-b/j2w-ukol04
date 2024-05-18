[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/head.ftlh"]
</head>
<body>
<div class="detail">

    <form class="delete" method="post" action="/detail/${id}" >
        <input type="hidden" name="id" value="${id}">
        <input type="submit" value="Smazat">
    </form>

    <div class="vizitka">
        <div class="jmeno">${vizitka.jmeno}</div>
        <div class="firma">${vizitka.firma}</div>
        <div class="udaje">
            <div class="adresa">
                [#if vizitka.ulice??]
                    <div>${vizitka.ulice}</div>
                [/#if]
                [#if vizitka.obecPsc??]
                    <div>${vizitka.obecPsc}</div>
                [/#if]
            </div>
            <div class="kontakty">
                [#if vizitka.email??]
                    <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                [/#if]
                [#if vizitka.telefon??]
                    <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                [/#if]
                [#if vizitka.web??]
                    <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                [/#if]
            </div>
        </div>
    </div>

    <div class="mapa">
        [#if vizitka.celaAdresa??]
            <iframe style="border:none" src="https://frame.mapy.cz/?q=${vizitka.celaAdresa?url}" width="100%"
                    height="100%" frameborder="0"></iframe>
        [/#if]
    </div>

    <nav>
        <a href="/">◂ zpět na seznam</a>
    </nav>


</div>
</body>
</html>
