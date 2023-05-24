import 'package:cdc_ci_app/src/screens/conditions.dart';
import 'package:cdc_ci_app/src/screens/simulation_ligne.dart';

import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';

import 'contactez_nous.dart';

class Faq extends StatelessWidget {
  static const routeName = '/faq';

  final _headerStyle = const TextStyle(
      color: Color(0xffffffff),
      fontSize: 15,
      fontWeight: FontWeight.bold,
      fontFamily: 'Quicksand');
  final _contentStyle = const TextStyle(
    color: Color(0xff999999),
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: 'Quicksand',
  );

  final _question1 =
      'CDC Épargne Diaspora est un produit d’épargne, qui en contrepartie de versements réguliers et du blocage des sommes pendant une durée fixée lors de l\'ouverture du livret, permet de bénéficier d\'une rémunération de l\'épargne à des taux attractifs. Plus la durée de blocage consentie est longue, plus le taux est attractif. De plus, d\'autres avantages sont prévus en fin de période de blocage';
  final _question2 =
      'Le taux d\'intérêt de votre livret CDC Épargne Diaspora est garanti durant toute la durée de blocage. Les taux offerts à la souscription peuvent varier en fonction du contexte économique, mais cela ne concernera que les nouvelles souscriptions, le taux qui vous est proposé restera inchangé jusqu\'au terme du blocage.';
  final _question3 =
      'CDC Épargne Diaspora est un produit spécialement conçu pour les Ivoiriens qui résident et travaillent à l\'étranger.';
  final _question4 =
      'CDC Épargne Diaspora offre une combinaison d\'avantages uniques : \n - Un taux d\'intérêt parmi les meilleurs proposés ; \n - La sécurité procurée par un établissement financier disposant de la garantie de l\'Etat ivoirien ; \n - La satisfaction de contribuer au développement de la Côte d\'Ivoire à travers son épargne.';
  final _question5 =
      'CDC Épargne Diaspora est le produit idéal pour préparer sa retraite en Côte d\'Ivoire : il permet de se constituer un pécule qui pourra être utilisé pour obtenir une retraite grâce au partenariat exclusif conclu avec Atlantique Assurances.';
  final _question6 =
      'La CDC-CI a pensé à vous. CDC Épargne Diaspora permet de se constituer un pécule qui pourra être mis à profit pour constituer un apport personnel lors de l\'achat d\'un logement. De plus, de par sa position centrale dans l\'investissement de long terme en Côte d\'Ivoire, la CDC-CI a noué des partenariats avec un établissement bancaire vous permettant de bénéficier à l\'accès au crédit dans les meilleures conditions..';
  final _question7 =
      'Rien de plus simple ; tout se fait par internet et en quelques clics';
  final _question8 =
      'Plusieurs modalités de versements sont prévues afin de vous faciliter la vie : versement par virement, par prélèvement, par carte bancaire, par plateforme de paiement, par E-banking, par RapidTransfert, etc... \n \n Tous les détails vous seront donnés dès validation de votre souscription.';
  final _question9 =
      'Comme tout produit financier, des frais sont prélevés pour permettre son fonctionnement. Du fait du statut particulier de la CDC-CI, ces frais sont réduits au minimum. Il s\'agit de frais prélevés sur les versements (droits d\'entrée).';
  final _question10 =
      'Votre compte est exprimé dans la devise officielle de Côte d\'Ivoire (actuellement le Franc CFA). Vos versements peuvent être effectués dans n\'importe quelle devise convertible et seront convertis en fonction du cours en vigueur au moment de votre versement.';
  final _question11 =
      'Vous définissez vous-même, lors de la souscription, la fréquence et le montant de vos versements. Vous pouvez opter pour une fréquence mensuelle, trimestrielle ou semestrielle. Les versements doivent respecter un minimum de CFA 65.596 par versement. Le montant de souscription ne peut être inférieur à CFA 200.000. \n\n Outre ces versements réguliers, vous pouvez effectuer des versements libres à votre convenance et du montant que vous souhaitez, pourvu qu\'ils respectent les minima décrits ci-dessus.';
  final _question12 =
      'Si vous disposez d\'une somme importante, il existe la formule du versement unique qui vous permet de verser en une fois une somme importante à la souscription du produit, et de bénéficier, sur toute la durée de blocage, du taux d\'intérêt attractif qui correspond à la durée de blocage choisie.';
  final _question13 =
      'Vous n\'ouvrez qu\'un seul livret, mais vous pouvez souscrire à plusieurs contrats, avec des engagements de versements différents pour bénéficier des taux d\'intérêts croissants avec les durées de blocage par exemple, ou pour ajuster votre épargne dans le temps à la croissance de vos revenus, ou tout simplement en fonction de vos projets et de leur évolution...';
  final _question14 =
      'Les versements et le solde de votre livret ne subissent aucune restriction.';
  final _question15 =
      'Les montants et fréquences de versement ont été définis par vous lors de la souscription. En cas de non respect de cet engagement, le contrat est mis en réduction jusqu\'au terme de la période de blocage et le taux de rendement est réduit conformément aux conditions générales. Il est de ce fait recommandé de bien ajuster vos engagements à vos capacités d\'épargne réelles, et ne pas oublier que vous avez la faculté d\'effectuer des versements libres pour compléter votre épargne programmée.';
  final _question16 =
      'Les sommes versées sur le livret CDC Épargne Diaspora sont bloquées pour la durée prévue au contrat et sont rémunérées en contrepartie à un taux d\'intérêt attractif et garanti. Cette notion de blocage fait que les sommes versées sont indisponibles jusqu\'à l\'issue de la période de blocage. \n\n Des cas de déblocage anticipé existent néanmoins pour faire face à des circonstances exceptionnelles. Elle sont décrites dans les Conditions Générales.';
  final _question17 =
      'Grâce au partenariat noué avec Atlantique Assurances Vie, le livret CDC Épargne Diaspora donne accès, outre la rente de retraite, à des garanties de prévoyance couvrant le décès ou l\'invalidité durant la période de blocage ou le rapatriement en cas de décès à l\'étranger. D\'autres gararanties permettent d\'anticiper une couverture Santé au retour en Côte d\'Ivoire.';
  final _question18 =
      'Lors de votre souscription, vous choisissez les garanties dont vous souhaitez bénéficier. Dès lors, vous ne vous occupez plus de rien : les cotisations sont prélevées directement sur vos versements, au tarif convenu lors de la souscription, et reversées par CDC-CI à Atlantique assurance. Aucune démarche, à part les versements d\'épargne, n\'est requise de votre part, pour faire fonctionner le livret CDC Épargne Diaspora et ses garanties annexes.';
  final _question19 =
      'A l\'issue de la période de blocage, les sommes deviennent disponibles et peuvent être récupérées à tout moment. Elle peuvent également demeurer sur le livret et sont rémunérées au taux d\'intérêt proposé par la CDC-CI pour les sommes devenues disponibles (ce taux est revu régulièrement en fonction des conditions économiques). Les sommes peuvent également être rebloquées à l\'occasion, par exemple, d\'un nouveau contrat à versement unique.';
  final _question20 =
      'Les intérêts produits par les sommes déposées sur un Livret CDC Épargne Diaspora sont exonérés de l’Impôt Général sur le Revenu (IGR) en Côte d’Ivoire, en raison de la suspension de l’obligation de déclaration annuelle (cf. article 25 de l\'annexe fiscale à la loi n° 2019-1080). \n\n En revanche, ces intérêts sont susceptibles d’être imposés dans l’État de résidence fiscale du titulaire conformément à la réglementation locale en vigueur, sous réserve le cas échéant, des dispositions des conventions fiscales signées par la Côte d’Ivoire. Dans ce cadre, la CDC-CI invite le titulaire à se renseigner auprès des autorités fiscales de son État de résidence et à se rapprocher d’un conseil indépendant afin d’obtenir les conseils juridiques et fiscaux appropriés. \n\n En cas de perte du statut de non-résident ivoirien, la législation fiscale applicable aux Ivoiriens résidents s’applique aux intérêts produits.';

  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF2FF),
      appBar: AppBar(
        title: const Text('FAQ GÉNÉRALE'),
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
      body: Accordion(
        maxOpenSections: 2,
        headerBackgroundColorOpened: Colors.black54,
        scaleWhenAnimating: true,
        openAndCloseAnimation: true,
        headerPadding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
        sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
        sectionClosingHapticFeedback: SectionHapticFeedback.light,
        children: [
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header:
                Text('Qu\'est ce que Épargne Diaspora ?', style: _headerStyle),
            content: Text(_question1, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Le taux d\'intérêt du livret Épargne Diaspora peut il varier ?',
                style: _headerStyle),
            content: Text(_question2, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text('Qui peut adhérer au produit CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question3, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'je souhaite me constituer une épargne; Pourquoi choisir CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question4, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'je souhaite préparer ma retraite; CDC Épargne Diaspora est-il le produit adapté ?',
                style: _headerStyle),
            content: Text(_question5, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'j\'aimerais acquérir un logement pour préparer mon retour en Côte d\'Ivoire : souscrire à CDC Épargne Diaspora pourra-t-il m\'aider?',
                style: _headerStyle),
            content: Text(_question6, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text('Comment souscrire CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question7, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Comment effectuer des versement sur CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question8, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Existe-t-il des frais lors des versements sur CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question9, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Dans quelle devise mon épargne sur CDC Épargne Diaspora est elle gérée ?',
                style: _headerStyle),
            content: Text(_question10, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'A quelle fréquence et quels montants verser sur le livret CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question11, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Je suis intéressé par le livret CDC Épargne Diaspora mais je ne souhaite pas m\'engager pour les versements réguliers ?',
                style: _headerStyle),
            content: Text(_question12, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text('Puis-je ouvrir pluisieurs CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question13, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Existe-t-il un plafond de versements sur le livret CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question14, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Que ce passe t\'il si je ne respecte pas mes engagements de versements sur le livret CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question15, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Je ne souhaite plus verser sur mon livret CDC Épargne Diaspora; puis-je récupérer mon épargne ?',
                style: _headerStyle),
            content: Text(_question16, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Quel garanti de prévoyance sont accéssibles grâces au livret CDC Épargne Diaspora ?',
                style: _headerStyle),
            content: Text(_question17, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Comment les cotisations des garanties de prévoyance, liées au livret CDC Épargne Diaspora sont elle payées ?',
                style: _headerStyle),
            content: Text(_question18, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Que deviennent les sommes à l\'issue de la période de blocage',
                style: _headerStyle),
            content: Text(_question19, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
          AccordionSection(
            isOpen: true,
            leftIcon: const Icon(Icons.insights_rounded, color: Colors.white),
            headerBackgroundColor: Colors.black,
            headerBackgroundColorOpened: const Color(0xffF28D31),
            header: Text(
                'Quelle est la fiscalité du livret CDC Épargne Diaspora',
                style: _headerStyle),
            content: Text(_question19, style: _contentStyle),
            contentHorizontalPadding: 20,
            contentBorderWidth: 1,
            // onOpenSection: () => print('onOpenSection ...'),
            // onCloseSection: () => print('onCloseSection ...'),
          ),
        ],
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
        Navigator.of(context).pushNamed(ContactezNous.routeName);
        break;
    }
  }
}
