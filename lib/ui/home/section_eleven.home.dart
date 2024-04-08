import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:layout/layout.dart';

class SectionElevenHome extends StatelessWidget {
  const SectionElevenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: context.breakpoint > LayoutBreakpoint.md ? 100 : 20,
      ),
      child: Column(
        children: [
          Text(
            'Umzug Profis Bayern ist transparent',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: context.breakpoint > LayoutBreakpoint.md ? 25 : 20,
            ),
          ),
          Text(
            'und beantwortet ihnen die wichtigsten Fragen im Bereich Umzug',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: context.breakpoint > LayoutBreakpoint.md ? 25 : 20,
            ),
          ),
          const Gap(20),
          SizedBox(
            width: context.breakpoint > LayoutBreakpoint.md
                ? MediaQuery.of(context).size.width * 0.6
                : null,
            child: const Column(
              children: [
                InfoBox(
                  title: 'Wie finde ich eine zuverlässige Umzugsfirma?',
                  content:
                      'Um eine zuverlässige Umzugsfirma zu finden, sollten Sie gründlich recherchieren. Lesen Sie Bewertungen auf verschiedenen Plattformen im Internet und fragen Sie Freunde oder Familie nach ihren Erfahrungen. Erkundigen Sie sich auch nach Empfehlungen von Menschen, die kürzlich umgezogen sind. Vergleichen Sie die Angebote und Dienstleistungen verschiedener Unternehmen, um das beste Preis-Leistungs-Verhältnis zu finden. Überprüfen Sie außerdem die Versicherungsdeckung und die Lizenzierung der Umzugsunternehmen, um sicherzustellen, dass Sie mit einem seriösen und zuverlässigen Unternehmen arbeiten.',
                ),
                Gap(10),
                InfoBox(
                  title: 'Wie viel kostet ein Umzug durchschnittlich?',
                  content:
                      'Die Kosten für einen Umzug können stark variieren und hängen von verschiedenen Faktoren ab. Dazu gehören die Entfernung zwischen Ihrem alten und neuen Zuhause, die Menge und das Gewicht Ihrer Möbel und persönlichen Gegenstände, zusätzliche Dienstleistungen wie Verpackung und Montage sowie die Jahreszeit, in der der Umzug stattfindet. Um einen realistischen Kostenvoranschlag zu erhalten, sollten Sie mehrere Umzugsunternehmen kontaktieren und sie um eine Schätzung bitten. Seien Sie dabei so genau wie möglich bei der Beschreibung Ihres Umzugsumfangs, um unerwartete Kosten zu vermeiden.',
                ),
                Gap(10),
                InfoBox(
                  title: 'Wann ist die beste Zeit für einen Umzug?',
                  content:
                      'Die beste Zeit für einen Umzug hängt von verschiedenen Faktoren ab, einschließlich Ihrer persönlichen Vorlieben, der Verfügbarkeit von Umzugsunternehmen und der Wettersituation. In vielen Regionen bevorzugen die meisten Menschen Umzüge im Frühling oder Sommer, da das Wetter in der Regel angenehmer ist und es weniger wahrscheinlich ist, dass es zu Verzögerungen durch schlechtes Wetter kommt. Außerdem fällt der Umzug oft mit dem Ende des Schuljahres zusammen, was für Familien mit Kindern praktisch ist. Es ist jedoch wichtig zu beachten, dass die Nachfrage nach Umzugsdienstleistungen zu Spitzenzeiten höher sein kann, was zu höheren Preisen und begrenzter Verfügbarkeit führen kann.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Wie kann ich meinen Umzug am besten planen und organisieren?',
                  content:
                      'Ein gut durchdachter Umzugsplan ist entscheidend, um einen reibungslosen Ablauf Ihres Umzugs zu gewährleisten. Beginnen Sie frühzeitig mit der Planung, idealerweise mehrere Wochen oder sogar Monate im Voraus. Erstellen Sie eine Liste aller Aufgaben, die erledigt werden müssen, und legen Sie einen Zeitplan fest, um sicherzustellen, dass Sie nichts vergessen. Berücksichtigen Sie dabei auch mögliche Hindernisse wie besondere Genehmigungen oder spezielle Anforderungen an Ihrem alten oder neuen Wohnort. Vergessen Sie nicht, auch die Bedürfnisse Ihrer Familie und Haustiere in den Umzugsplan einzubeziehen.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Welche Versicherungen sind während des Umzugs notwendig?',
                  content:
                      'Während des Umzugs ist es wichtig, Ihre Besitztümer gegen mögliche Schäden oder Verluste abzusichern. Eine Umzugsversicherung kann Ihnen dabei helfen, finanzielle Risiken zu minimieren. Überprüfen Sie Ihre bestehenden Versicherungsverträge, um zu sehen, ob diese bereits eine Deckung für Umzüge bieten. Falls nicht, erkundigen Sie sich bei Ihrem Umzugsunternehmen nach Versicherungsoptionen oder suchen Sie nach spezialisierten Umzugsversicherern. Stellen Sie sicher, dass Sie die Deckung und die Bedingungen der Versicherungspolice sorgfältig prüfen, um zu verstehen, welche Risiken abgedeckt sind und welche nicht.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Wie kann ich meine Möbel und Besitztümer sicher verpacken?',
                  content:
                      'Beim Verpacken Ihrer Möbel und persönlichen Gegenstände sollten Sie auf eine sichere und effiziente Methode achten. Verwenden Sie robuste Umzugskartons in verschiedenen Größen, um Ihre Sachen zu organisieren und zu schützen. Packen Sie empfindliche Gegenstände wie Glaswaren oder elektronische Geräte separat ein und verwenden Sie ausreichend Polstermaterial wie Luftpolsterfolie oder Zeitungspapier, um sie vor Beschädigungen zu schützen. Achten Sie darauf, schwere Gegenstände in kleinere Kartons zu packen, um das Gewicht gleichmäßig zu verteilen und das Risiko von Schäden beim Transport zu reduzieren. Kennzeichnen Sie alle Kartons deutlich mit ihrem Inhalt und dem Raum, in den sie im neuen Zuhause gebracht werden sollen, um das Auspacken zu erleichtern.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Welche Dokumente und Genehmigungen benötige ich für meinen Umzug?',
                  content:
                      'Um Ihren Umzug reibungslos durchzuführen, müssen Sie möglicherweise bestimmte Dokumente und Genehmigungen vorbereiten. Informieren Sie sich im Voraus über die spezifischen Anforderungen Ihres aktuellen und zukünftigen Wohnortes. Möglicherweise benötigen Sie eine Umzugsgenehmigung von Ihrer örtlichen Behörde, insbesondere wenn Sie in eine stark befahrene Gegend ziehen oder eine temporäre Sperrung von Parkplätzen benötigen. Darüber hinaus sollten Sie sicherstellen, dass Sie alle relevanten Verträge und Unterlagen für Ihre neue Immobilie bereithalten, einschließlich Miet- oder Kaufverträge sowie Versorgungsverträge für Strom, Wasser und Internet.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Wie kann ich meinen Umzug effizient durchführen, um Zeit und Geld zu sparen?',
                  content:
                      'Die effiziente Organisation Ihres Umzugs kann Ihnen Zeit und Geld sparen. Erstellen Sie einen detaillierten Zeitplan, der alle Schritte von der Vorbereitung bis zum Auspacken umfasst, und halten Sie sich daran. Delegieren Sie Aufgaben an Familienmitglieder oder Freunde, um die Arbeit zu verteilen und den Stress zu reduzieren. Packen Sie frühzeitig und systematisch, beginnend mit selten genutzten Gegenständen und arbeiten Sie sich zu den täglich benötigten Dingen vor. Vergessen Sie nicht, wichtige Dokumente, Wertsachen und Medikamente griffbereit zu halten, damit Sie während des Umzugs darauf zugreifen können. Wenn Sie alles gut organisieren, wird Ihr Umzug viel reibungsloser verlaufen.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Gibt es spezielle Anforderungen oder Einschränkungen in meinem neuen Wohnort?',
                  content:
                      'Bevor Sie Ihren Umzug beginnen, sollten Sie sich über spezielle Anforderungen oder Einschränkungen in Ihrem neuen Wohnort informieren. Überprüfen Sie beispielsweise lokale Vorschriften bezüglich Parkregelungen, Müllabfuhrtermine oder Recyclingpraktiken. Möglicherweise benötigen Sie auch spezielle Genehmigungen oder Erlaubnisse für bestimmte Aktivitäten wie das Entladen von Umzugswagen oder das Aufstellen von Möbeln. Indem Sie sich im Voraus informieren und vorbereiten, können Sie potenzielle Probleme vermeiden und Ihren Umzug reibungsloser gestalten.',
                ),
                Gap(10),
                InfoBox(
                  title:
                      'Wie kann ich meinen Umzug umweltfreundlich gestalten?',
                  content:
                      'Um Ihren Umzug umweltfreundlicher zu gestalten, sollten Sie umweltbewusste Entscheidungen treffen. Verwenden Sie wiederverwendbare Verpackungsmaterialien wie Kartons, Luftpolsterfolie und Packdecken, anstatt Einwegprodukte zu verwenden. Spenden Sie nicht benötigte Gegenstände an gemeinnützige Organisationen oder versuchen Sie, sie zu recyceln, anstatt sie wegzuwerfen. Reduzieren Sie den Abfall, indem Sie vorhandene Verpackungsmaterialien wiederverwenden und nur die notwendigsten Gegenstände mitnehmen. Indem Sie umweltfreundliche Praktiken während Ihres Umzugs anwenden, können Sie einen Beitrag zum Schutz unserer Umwelt leisten und gleichzeitig Ihre persönliche Belastung reduzieren.',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InfoBox extends StatefulWidget {
  const InfoBox({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  State<InfoBox> createState() => _InfoBoxState();
}

class _InfoBoxState extends State<InfoBox> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Icon(
                  isOpen
                      ? Icons.arrow_drop_up_rounded
                      : Icons.arrow_drop_down_rounded,
                ),
              ],
            ),
            if (isOpen)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Text(
                    widget.content,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
