import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';
import 'package:flutter/material.dart';

import '../constants/images_strings.dart';
import 'faq.dart';

class Conditions extends StatelessWidget {
  const Conditions({super.key});
  static const routeName = '/conditions-generales';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        //leading: BackButton(),
        title: const Text('Conditions Générales'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text('Conditions Générales'),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text('FAQ'),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text('Simuler votre épargne'),
              ),
              PopupMenuItem<int>(
                value: 3,
                child: Text('Je dépose mon épargne'),
              ),
              PopupMenuItem<int>(
                value: 4,
                child: Text('Nous contacter'),
              ),
            ],
            onSelected: (item) => selectedItem(context, item),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: AssetImage(logoHome),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Conditions Générales',
                style: TextStyle(
                  color: Color(0xFF2E7742),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'I. OUVERTURE ET DETENTION DU LIVRET CDC ÉPARGNE DIASPORA',
              style: TextStyle(
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.1 PRINCIPES GENERAUX',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.1.1 CARACTERISTIQUES PRINCIPALES DU PRODUIT',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le produit est un produit d’épargne proposant la rémunération des sommes versées à un taux d’intérêt fixé aux conditions particulières, en contrepartie de l’indisponibilité des sommes versées durant une période précisée aux conditions particulières. Le réceptacle de l’épargne, défini par une durée de blocage et un taux d’intérêt est dénommé compartiment. Le Livret CDC Épargne Diaspora peut comprendre plusieurs compartiments actifs simultanément. La durée de blocage court depuis la date de premier versement et s’achève au terme de la durée prévue aux conditions générales. Toutes les sommes versées ultérieurement dans le cadre prévu aux conditions générales ont la même échéance de blocage.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.1.2 CARACTERISTIQUES ANNEXES DU PRODUIT : PREVOYANCE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le produit propose des garanties de prévoyance optionnelles négociées par la CDC-CI pour le compte des souscripteurs du Livret CDC Épargne Diaspora. La référence des conditions générales (numéros de police) de ces contrats est stipulée ci-après :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Le souscripteur peut souscrire à ces options, les modifier ou les supprimer à tout moment ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- Les garanties prennent effet dans les conditions et au tarif décrites dans les conditions générales des contrats.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- Les garanties prennent effet dans les conditions et au tarif décrites dans les conditions générales des contrats.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.1.3 SORTIE DU PRODUIT',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'A l’issue de la période de blocage, les sommes deviennent disponibles et rachetables à tout moment. Les sommes ne deviennent disponibles qu’à l’issue de la période de blocage prévue aux conditions particulières ou dans le cas de l’invocation d’un cas de déblocage anticipé (voir chapitre II.7 ciaprès). Les sommes non disponibles ne peuvent en aucun cas faire l’objet d’un rachat. Les opérations possibles en sortie du produit sont décrites au chapitre V ci-après.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.1.4 POPULATION ELIGIBLE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le Livret CDC Épargne Diaspora est exclusivement réservé aux personnes physiques majeures et capables, de nationalité ivoirienne, salariées et résidentes fiscales dans un pays étranger.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.2 CONNAISSANCE CLIENT ET JUSTIFICATIFS',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le Client doit communiquer à la CDC-CI l’ensemble des justificatifs, notamment relatifs à son identité, sa capacité juridique et son domicile, tels que prévus par la réglementation en vigueur. Pendant toute la durée des relations contractuelles, le Client doit informer la CDCCI de tout changement intervenant dans sa situation personnelle, notamment juridique, et pouvant avoir une incidence sur le fonctionnement du Livret CDC Épargne Diaspora (notamment changement d’adresse postale, changement de domicile fiscal, de coordonnées, mariage, divorce, perte d’emploi, changement de capacité, changement de situation juridique ou de représentant légal, …). De façon générale, le Client s’engage à fournir, à première demande de la CDC-CI, tout justificatif nécessaire ou utile pour permettre la mise à jour des éléments et données le concernant ou/et le respect des dispositions réglementaires en vigueur en matière de connaissance Client.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'I.3 DATE D’OUVERTURE DEFINITIVE ET DUREE DU LIVRET CDC ÉPARGNE DIASPORA',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le Livret CDC Épargne Diaspora sera définitivement ouvert à la date du versement initial, telle que résultant de la première réception de fonds dans les comptes de la CDC-CI. Le versement initial ne pourra intervenir qu’après signature du présent contrat. Le Livret CDC Épargne Diaspora est conclu pour une durée indéterminée. Les échéances de blocage et les taux d’intérêts correspondant à chaque compartiment sont stipulés dans les Conditions Particulières. La durée minimale de blocage des sommes est de cinq (5) ans.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'II. FONCTIONNEMENT DU LIVRET CDC ÉPARGNE DIASPORA',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.1 MONTANTS',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le montant minimum de souscription du Livret CDC Épargne Diaspora est de FCFA 200.000. Le montant minimum de chaque opération est de FCFA 65.596. Le solde du Livret CDC Épargne Diaspora ne peut être débiteur ni même inférieur à la somme de FCFA 200.000. Si la provision égale au Montant prévu dans le cadre du Versement Initial stipulé aux Conditions Particulières, n’est pas préalable, disponible et/ou suffisante sur le compte de dépôt au jour de l’ouverture définitive du Livret CDC Épargne Diaspora, la CDC-CI est autorisée par le Titulaire à ouvrir ledit Livret CDC Épargne Diaspora au montant minimum de FCFA 200.000.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2 OPERATIONS SUR LE LIVRET CDC ÉPARGNE DIASPORA',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Les opérations autorisées sur le Livret CDC Épargne Diaspora sont limitées aux opérations mentionnées ci-après.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2.1 VERSEMENTS, VIREMENTS ET PAIEMENTS VIA INTERNET',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le Livret CDC Épargne Diaspora est alimenté par des versements, virements ou paiements via internet ou tout autre moyen de paiement autorisé par la CDC-CI. Les versements, les virements et les paiements via internet peuvent être réalisés vers le Livret CDC Épargne Diaspora, le cas échéant, dans le cadre d’un ordre permanent. L’alimentation du Livret CDC Épargne Diaspora se fait par des approvisionnements fixes et réguliers dont le montant, la période et la durée sont fixées dans les Conditions Particulières. Le Client peut en outre alimenter le Livret CDC Épargne Diaspora par des approvisionnements libres, selon ses disponibilités. Les versements libres effectués sur une année civile ne peuvent excéder l’ensemble des versements périodiques réalisés ou prévus aux conditions particulières sur la même année civile. Le Client peut également opter pour un versement unique sur un compartiment. Cette option, choisie lors de la souscription du compartiment, a pour effet de bloquer définitivement le compartiment jusqu’à l’échéance dès lors que le versement unique est intégré et crédité sur le compartiment en question.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2.2 BLOCAGE DU COMPTE, REMBOURSEMENT',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Les sommes inscrites au crédit d’un Livret CDC Épargne Diaspora sont bloquées jusqu’à une date fixée dans les Conditions Particulières. Le remboursement intervient sur demande du titulaire au terme de la durée de blocage ou dans les cas de déblocages prévus à l’article « Déblocage du compte » du présent contrat.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2.3 SUSPENSION',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le produit est suspendu lorsque l’épargnant perd temporairement son statut de salarié. Durant la période de suspension, l’épargnant ne dispose plus de la faculté d’alimenter le produit en épargne nouvelle. En revanche, les sommes inscrites au compte de l’épargnant continuent de produire des intérêts dans les conditions décrites au paragraphe « fonctionnement du compte d’épargne ». Il est mis fin à la suspension lorsque l\'épargnant est en mesure de prouver son éligibilité par la présentation d\'une attestation de son employeur à l\'étranger. La fin du statut de non-résident ivoirien suspend les avantages du produit qui y sont subordonnés, conformément à la législation en vigueur.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2.4 MISE EN REDUCTION',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le produit est suspendu lorsque l’épargnant perd temporairement son statut de salarié. Lorsque les versements effectués sur une année ne couvrent pas le minimum prévu aux conditions générales, le compartiment concerné est mis en réduction. Cette mise en réduction entraine les conséquences suivantes :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Il ne sera plus possible d’effectuer des versements sur ce compartiment qui restera néanmoins bloqué jusqu’à l’échéance prévue aux conditions particulières ou en cas d’invocation d’un cas de déblocage anticipé ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Les sommes figurant à l’actif du compartiment mis en réduction continuent à produire intérêt jusqu’à leur rachat, mais au taux annuel prévu pour les sommes parvenues à échéance minoré de 1%, sans pouvoir être inférieur à zéro.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.2 OPERATIONS SUR LE LIVRET CDC ÉPARGNE DIASPORA',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le Client peut donner à une (ou plusieurs) personne(s) physique(s) capable(s) une procuration, c’est-à-dire un mandat à l’effet de faire fonctionner le Livret CDC Épargne Diaspora et d’obtenir toutes informations dans les mêmes conditions que s’il y procédait lui-même. La désignation d’un mandataire relève de sa seule et entière responsabilité. Le mandataire pourra effectuer sur le Livret CDC Épargne Diaspora qui fait l’objet de la procuration, les mêmes opérations que le Client, tant au débit qu’au crédit, sans réserve, ni limitation de montant et notamment toutes les opérations prévues par la présente convention. Les opérations effectuées par tout mandataire engagent la responsabilité du titulaire du Livret CDC Épargne Diaspora. Le mandataire dépose un spécimen de sa signature et justifie de son identité et de son domicile dans les mêmes conditions que le Client. Le cas échéant, la CDC-CI peut, notamment pour des raisons de sécurité, refuser d’agréer ou informer le Client qu’elle n’agrée plus un mandataire désigné. De même, une procuration par acte notarié pourra, le cas échéant, être demandée par la CDC-CI. La procuration prend fin en cas de renonciation par le mandataire de son mandat notifié par écrit à la CDC-CI, de dénonciation de la procuration par le Client notifiée par écrit à la CDC-CI, de décès du titulaire, de clôture du Livret CDC Épargne Diaspora, ou sur l’initiative de la CDC-CI informant le Client qu’elle n’agrée plus le mandataire. La révocation du mandataire prend effet ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Soit à la date de réception par la CDC-CI d’une lettre recommandée avec avis de réception adressée par le Client notifiant la demande de révocation ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Soit à la date de la signature, à l’agence qui gère le Livret CDC Épargne Diaspora, d’un document de révocation.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Important : Le Client doit informer préalablement le mandataire de la révocation du mandat et faire toute diligence afin qu’il lui restitue tous les moyens de retrait en sa possession. Dès que la CDC-CI aura connaissance de cette révocation, elle en informera également le mandataire, lui demandera la restitution des moyens de retrait et lui interdira l’accès au Livret CDC Épargne Diaspora du Client par le moyen des canaux de CDC-CI à distance. De même, il appartient au mandataire d’informer le Client de sa renonciation.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.4 MOYENS DE PAIEMENT',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Il n’est pas délivré de moyen de paiement au titre du Livret CDC Épargne Diaspora. Il n’est pas délivré de moyen de paiement au titre du Livret CDC Épargne Diaspora. La rémunération est croissante selon la durée de blocage consentie. Les taux de rémunération sont fixés par la Direction Générale de la CDC-CI et sont indiqués dans les Conditions Particulières. Les versements produisent intérêt lors de leur intégration sur le compte d’épargne. Les versements effectués par les épargnants sont intégrés au compte d’épargne :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Le 1er du mois suivant pour les versements dont la réception est effectivement constatée par la CDC-CI sur la première quinzaine du mois ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Le 15 du mois suivant pour les versements dont la réception est effectivement constatée par la CDC-CI sur la deuxième quinzaine du mois.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'par la CDC-CI sur la deuxième quinzaine du mois. Les intérêts cessent de courir à la fin de la quinzaine qui précède le jour du remboursement. La capitalisation des intérêts intervient mensuellement sur le compte du Client. Si, en raison des dates d’opération de dépôt et de retrait, le montant omptabilisé au titre de l’intérêt est négatif, ce montant n’est pas pris en compte pour le calcul du solde du compte. En cas de clôture du Livret CDC Épargne Diaspora en cours d’année, les intérêts courus sur la période depuis le début de l’année sont crédités au jour de la clôture.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.6 DEBLOCAGE DU COMPTE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Le déblocage des fonds avant terme n’est pas permis, sauf en cas de réalisation des conditions spécifiques mentionnées ci-dessous :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '- Le décès du titulaire ou de son conjoint ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- L’invalidité du titulaire ou de son conjoint ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- La fin du statut de non résident ivoirien ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- La retraite du titulaire.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Si le Titulaire du compte souhaite débloquer les fonds avant terme, le taux de rémunération du Livret CDC Épargne Diaspora sera donc égal à celui correspondant à la période durant laquelle les fonds avaient été effectivement bloqués, et au minimum au taux correspondant à la durée de blocage la plus courte. En cas de déblocage anticipé, les sommes ont vocation à être rachetées, par suite de la fin de l’indisponibilité induite par l’invocation du cas de déblocage. Les sommes récupérées à cette occasion suppriment l’accès aux avantages inhérents à la période de blocage initialement convenue, et ne peuvent donner lieu à un nouveau blocage. Les modalités d’exercice des déblocages anticipés figurent sur le site internet de la CDC-CI.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.7 CLOTURE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le non-respect, par le Titulaire, des conditions fixées à l’ouverture de son Livret CDC Épargne Diaspora entraîne sa clôture. Le Livret CDC Épargne Diaspora peut être clôturé, soit à l’initiative de la CDC-CI, soit à celle du Titulaire. La clôture par le Titulaire résultera de l’envoi d’une lettre avec accusé de réception. En cas de clôture, les sommes figurant au crédit du Livret CDC Épargne Diaspora soldé seront virées sur le compte désigné par le titulaire du livret. A défaut de compte désigné, les sommes seront restituées par chèque de CDC-CI ou transférées sur un compte d’attente dont le solde sera restitué à première demande de l’intéressé. Le décès du Client entraîne la clôture du Livret CDC Épargne Diaspora au jour du décès. La CDC-CI peut clôturer à tout moment le Livret CDC Épargne Diaspora par lettre recommandée avec avis de réception et moyennant le respect d’un préavis d’[un mois]. Le Titulaire dispose d’un délai de [30] jours à compter de la date de réception du courrier de clôture, pour indiquer le compte sur lequel il souhaite que le solde de son Livret CDC Épargne Diaspora soit viré. La CDC-CI se réserve le droit de clôturer sans préavis le Livret CDC Épargne Diaspora pour motif légitime, de solde inférieur au solde minimum, de solde débiteur, de non-respect de la réglementation applicable au Livret CDC Épargne Diaspora, de comportement gravement répréhensible notamment en cas de refus de satisfaire à l’obligation d’information, de fourniture de documents faux ou inexacts, d’incivilités ou plus généralement, de non-respect de l’une des obligations nées de la convention de Livret CDC Épargne Diaspora',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'II.8 PRESCRIPTION',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Les sommes déposées pour le compte du produit « CDC Épargne Diaspora » sont frappées par la prescription trentenaire ; ces sommes sont acquises à la CDC-CI si elles n’ont pas fait l’objet, de la part des ayant droits, d’aucune opération ou réclamation depuis plus de trente ans. Par ailleurs, les sommes déposées au titre d’un contrat CDC Epargne Diaspora, resté inactif pendant 10 ans, font l’objet d’une gestion effective et autonome de la CDCCI. Celle-ci tiendra les fonds pour le compte du titulaire du Livret CDC Épargne Diaspora jusqu’à l’échéance de la prescription trentenaire.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'III. FISCALITE EN VIGUEUR AU JOUR DE L’EDITION DE LA DEMANDE D’OUVERTURE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'III.1 EXONERATIONS FISCALES',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Les intérêts produits par les sommes déposées sur un Livret CDC Épargne Diaspora sont exonérés de l’Impôt Général sur le Revenu (IGR) en raison de la suspension de l’obligation de déclaration annuelle (cf. article 25 de l\'annexe fiscale à la loi n°2019-1080). En revanche, ces intérêts sont susceptibles d’être imposés dans l’État de résidence fiscale du titulaire conformément à la réglementation locale en vigueur, sous réserve le cas échéant, des dispositions des conventions fiscales signées par la Côte d’Ivoire. Dans ce cadre, la CDC-CI invite le titulaire à se renseigner auprès des autorités fiscales de son État de résidence et à se rapprocher d’un conseil indépendant afin d’obtenir les conseils juridiques et fiscaux appropriés. En cas de perte du statut de non-résident ivoirien, la législation fiscale applicable aux Ivoiriens résidents s’applique aux intérêts produits',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'III.2 OBLIGATIONS DECLARATIVES DE LA CDC-CI',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'En application des dispositions du Code Général des Impôts (CGI), la CDCCI, teneur du compte doit adresser à l’administration fiscale ivoirienne, sous peine des sanctions prévues, la déclaration annuelle des opérations sur valeurs mobilières indiquant, sauf dispense expresse de déclaration, le montant des intérêts versés au cours de l’année précédente, à tout titulaire de compte d’épargne ayant sa résidence fiscale hors de Côte d’Ivoire. Le titulaire du compte d’épargne est informé par la CDC-CI des sommes qui ont été portées à la connaissance de l’administration fiscale ivoirienne. La déclaration annexe est transmise par cette dernière aux autorités fiscales de l’Etat de résidence du titulaire du compte.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'III.3 CONDITIONS TARIFAIRES',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Les opérations d’ouverture, relatives à la mise en place du produit, ainsi que celles de versements d’épargne sont susceptibles de voir appliquer des frais. Les tarifs varient en fonction des options souscrites et sont précisés dans les Conditions Particulières.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'IV. MODIFICATIONS DES CONDITIONS GENERALES (Y COMPRIS TARIFAIRES)',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toute modification tarifaire est portée à la connaissance du Client par tout moyen notamment par voie d\'affichage dans les agences de la CDC-CI, une mention sur son site Internet ou une mention portée sur le relevé de compte. Le Client, qui n’accepte pas ladite modification, peut clôturer immédiatement son Livret CDC Épargne Diaspora.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'IV.1 MODIFICATIONS A L’INITIATIVE DE LA CDC-CI',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'La CDC-CI aura la faculté de modifier les Conditions Générales (y compris tarifaires) du Livret CDC Épargne Diaspora. À cet effet, la CDC-CI communiquera au Client, un mois avant la date d’application envisagée, sur support papier ou sur tout autre support durable (par exemple par courrier électronique, par une mention sur le relevé de compte ou par moyen télématique dans le cadre des services de CDC-CI en ligne), le projet de modification. La CDC-CI et le Client conviennent que l’absence de contestation du Client dans ce délai vaut acceptation par ce dernier des modifications. En cas de refus du Client, celui-ci peut résilier sa convention Livret CDC Épargne Diaspora, sans frais, avant la date d’application des modifications. À défaut de résiliation dans ce délai, les modifications lui seront opposables.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'IV.2 MODIFICATIONS IMPOSEES PAR DES TEXTES LEGISLATIFS OU REGLEMENTAIRES',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toutes dispositions législatives ou réglementaires qui rendraient nécessaire la modification de tout ou partie de la présente convention seront applicables dès leur date d’entrée en vigueur.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'IV.3 MODIFICATIONS A L’INITIATIVE DU CLIENT',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Toutes les modifications à l’initiative du Client seront matérialisées par des avenants aux conditions particulières.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'V. SORTIES A L’ECHEANCE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'A l’issue de la période de blocage, les sommes accumulées sur le compte d’épargne deviennent disponibles et sont rachetables à tout moment. Les sommes rachetées donnent droit aux avantages complémentaires souscrits par le Client et négociés par la CDC-CI dans le cadre de contrats groupe conclus avec ses partenaires. Ces avantages portent sur :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '- Des avantages bancaires : obtention facilitée d’un prêt hypothécaire, cautionnement, taux réduit, etc. ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- Des avantages assurantiels : rente viagère, etc. ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            Text(
              '- Des avantages négociés auprès de promoteurs immobiliers',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Les références de ces contrats figurent ci-après :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'La présente convention n’est complète qu’accompagnée des conditions générales des contrats cités ci-dessus.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'VI. CONFIDENTIALITE',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'La CDC-CI s’engage à considérer comme strictement confidentielles toutes les Informations, quelles qu\'en soient la nature, dans le cadre de la négociation, la passation et l’exécution du Contrat. La CDC-CI reconnait le caractère confidentiel de toutes informations échangées entre elle et le Client pour l’exécution du Contrat et s’engage à garder strictement confidentielles et à ne pas divulguer à des tiers par quelque moyen que ce soit, les informations qui lui seront transmises par l’adhérent. La CDC-CI pourra toutefois communiquer des Informations Confidentielles lorsqu’elle y sera tenue en vertu des dispositions légales et réglementaires qui lui sont applicables. La CDC-CI pourra également transmettre des informations confidentielles :',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Aux entreprises qui assurent ou garantissent les crédits de ses clients (entreprises d’assurances, sociétés de caution mutuelle, par exemple) ;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Aux entreprises de recouvrement;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Aux tiers (prestataires, sous-traitants, …) en vue de leur confier des fonctions opérationnelles (par exemple, pour la gestion des cartes bancaires, ou la fabrication de chéquiers);',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Aux tiers (prestataires, sous-traitants, …) en vue de leur confier des fonctions opérationnelles (par exemple, pour la gestion des cartes bancaires, ou la fabrication de chéquiers);',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Lors de l\'étude ou l\'élaboration de tous types de contrats ou d\'opérations concernant ses clients, dès lors que ces entités appartiennent au même groupe que la CDC-CI;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'À toute autorité de contrôle;',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Et dans le cadre de toute procédure judiciaire à laquelle elle est partie, pour la défense de ses droits.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Le Client peut aussi indiquer par écrit les tiers auxquels la CDC-CI sera autorisée à fournir les informations le concernant qu’il mentionnera expressément.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'VII. PROTECTION DES DONNEES A CARACTERE PERSONNEL',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Le CLIENT reconnait que la CDC-CI est amenée à traiter des données à caractère personnel le concernant, communiquées par lui, à l\'occasion de la conclusion et de l\'exécution de la présente convention, ainsi que dans le cadre de la gestion de la relation CLIENT. Le CLIENT déclare ainsi avoir obtenu les autorisations nécessaires pour recueillir toutes les données à caractère personnel communiquées par lui à la CDC-CI, portant sur toute autre personne. La collecte et les traitements réalisés par la CDC-CI ont, notamment, pour finalité la gestion du compte et/ou des produits et services souscrits. L\'établissement des preuves des transactions et conventions, la gestion de la relation CLIENT, la gestion des risques, la prévention de la fraude, le recouvrement ou la cession de créances et la gestion des incidents de paiement, la prospection et la réalisation d\'animations commerciales, d\'études statistiques et patrimoniales et le respect des obligations légales et réglementaires, notamment en matière de gestion du risque opérationnel, de lutte contre le blanchiment des capitaux et le financement du terrorisme, le traitement spécifique de tout incident, déclaration fausse ou  irrégulière, destiné à prévenir la fraude ou toute autre finalité liée à l\'activité ou aux services proposés au CLIENT. De convention expresse, le CLIENT autorise la CDC-CI à collecter, traiter et communiquer des données à caractère personnel aux personnes morales appartenant au même groupe que la CDC-CI, à ses autorités de tutelles, aux prestataires et sous-traitants qui interviennent pour son compte, à ses partenaires, intermédiaires, courtiers et assureurs dans la limite nécessaire à l\'exécution des prestations concernées, ainsi qu\'en tant que de besoin. Le CLIENT et les personnes physiques concernées par ces traitements disposent d\'un droit d\'accès aux données à caractère personnel les concernant et peuvent également demander que soit rectifiées, mises à jour ou supprimées les données inexactes, incomplètes ou périmées. Ils peuvent également s\'opposer, sous réserve de justifier d\'un motif légitime, à ce que des données à caractère personnel les concernant fassent l\'objet d\'un traitement étant entendu que cette opposition peut entraîner l\'impossibilité pour la CDC-CI de fournir le produit ou le service demandé ou souscrit voire même la clôture de son compte. Ces droits peuvent être exercés par écrit, auprès de la CDC-CI ou selon toutes autres modalités prévues par le texte de loi. La CDC-CI ne saurait être tenue responsable de la fiabilité des données personnelles relatives à des tiers, transmises par le CLIENT. De même, elle ne saurait être tenue responsable des données personnelles transmises par le CLIENT dans le cadre de l\'utilisation du service à savoir, les données personnelles contenues dans les documents enregistrés par le CLIENT, la CDC-CI n\'ayant aucune relation avec les personnes dont les données sont transmises. La CDC-CI conservera les données ci-dessus évoquées pendant une durée de cinq (5) années supplémentaires après la cessation de la relation avec le CLIENT.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'VIII. LITIGES',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFFF28D31),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Les présentes conditions sont soumises à la législation ivoirienne. Tout litige relatif à l’exécution ou l’interprétation des présentes sera réglé à l’amiable, à défaut seul le Tribunal de Commerce d’Abidjan sera compétent.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Color(0xFF000000),
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              width: MediaQuery.of(context).size.width * 0.9,
              image: const AssetImage(signature),
            ),
          ],
        ),
      ),
    );
  }

  selectedItem(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).pushNamed(Conditions.routeName);
        break;
      case 1:
        Navigator.of(context).pushNamed(Faq.routeName);
        break;
      case 2:
        Navigator.of(context).pushNamed(SimulationLigne.routeName);
        break;
      case 3:
        print('Je dépose mon épargne');
        break;
      case 4:
        print('Nous contacter');
        break;
    }
  }
}
