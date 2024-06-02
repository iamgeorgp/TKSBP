import 'types.dart';

abstract class StandardQueries {
  static List<QueryMenuItemInterface> values = [
    const Towns3MonthQuery(),
    const TotalContractsHalfYearQuery(),
    const AverageMonthProfitQuery(),
    const ServiceRevenueForYearQuery(),
    const TopG10ClientsRevenueQuery(),
    const TopGManagersYearQuery(),
    const DefiniteServiceSelectionQuery(
      [
        'Sonya',
        'katya',
        'Mireku djima',
        'Karina',
      ],
    ),
    const ContractsWithDefiniteServiceSelectionQuery(
      [
        'Стратегическое планирование',
        'Оптимизация бизнес-процессов',
        'Управление персоналом',
        'Информационная безопасность',
        'Управление активами и коммуникациями',
      ],
    ),
  ];
}

class Towns3MonthQuery extends QueryMenuItem {
  const Towns3MonthQuery();

  @override
  String get description => 'Показатели по городам за последние 3 месяца';

  @override
  String get query =>
      'SELECT "City" AS "City", SUM("Price") AS "TotalRevenue", COUNT(*) AS "Total_Contracts" FROM "Clients" JOIN "Contracts" USING("ClientID") WHERE "SigningDate" >= CURRENT_DATE - INTERVAL \'3 months\' GROUP BY "City" ORDER BY "TotalRevenue" DESC;';
}

class TotalContractsHalfYearQuery extends QueryMenuItem {
  const TotalContractsHalfYearQuery();

  @override
  String get description => 'Общий отчет по контрактам за полгода';

  @override
  String get query =>
      'SELECT "c"."ContractID" AS "Contract_ID", "co"."CompanyID" AS "Company_ID", "co"."CompanyName" AS "Company_Name", "cl"."ClientID" AS "Client_ID", "cl"."ClientName" AS "Client_Name", "ts"."TypeServiceID" AS "Type_Service_ID", "ts"."TypeServiceName" AS "Type_Service_Name", "s"."ServiceID" AS "Service_ID", "s"."ServiceName" AS "Service_Name", "c"."SigningDate" AS "Signing_Date", "c"."StartDate" AS "Start_Date", "c"."EndDate" AS "End_Date", "c"."PayDate" AS "Pay_Date", "c"."Price" AS "Price", "m"."ManagerID" AS "Manager_ID", "m"."ManagerName" AS "Manager_Name", "m"."ManagerPhone" AS "ManagerPhone" FROM "Contracts" "c" JOIN "Company" "co" USING ("CompanyID") JOIN "Clients" "cl" USING ("ClientID") JOIN "TypeService" "ts" USING ("TypeServiceID") JOIN "Service" "s" USING ("ServiceID") JOIN "Managers" "m" USING ("ManagerID") WHERE "SigningDate" >= CURRENT_DATE - INTERVAL \'6 months\' ORDER BY "SigningDate" DESC;';
}

class AverageMonthProfitQuery extends QueryMenuItem {
  const AverageMonthProfitQuery();

  @override
  String get description =>
      'Среднемесячный доход по типам услуг за последний год';

  @override
  String get query =>
      'SELECT "ts"."TypeServiceID", "ts"."TypeServiceName", ROUND(AVG("sub"."TotalPrice")) AS "AvgMonthPrice" FROM (SELECT TO_CHAR("c"."SigningDate", \'YYYY-MM\') AS "YearMonth", "ts"."TypeServiceID", SUM("c"."Price") AS "TotalPrice" FROM "Contracts" "c" JOIN "TypeService" "ts" USING ("TypeServiceID") WHERE "SigningDate" >= CURRENT_DATE - INTERVAL \'12 months\' GROUP BY "YearMonth", "ts"."TypeServiceID") AS "sub" JOIN "TypeService" "ts" USING ("TypeServiceID") GROUP BY "ts"."TypeServiceID" ORDER BY "AvgMonthPrice" DESC;';
}

class ServiceRevenueForYearQuery extends QueryMenuItem {
  const ServiceRevenueForYearQuery();

  @override
  String get description => 'Общая выручка по услугам за текущий год';

  @override
  String get query =>
      'SELECT "s"."ServiceName", SUM("c"."Price") AS "TotalRevenue" FROM "Contracts" "c" JOIN "Service" "s" ON "c"."ServiceID" = "s"."ServiceID" WHERE EXTRACT(YEAR FROM "c"."SigningDate") = EXTRACT(YEAR FROM CURRENT_DATE) GROUP BY "s"."ServiceName" ORDER BY "TotalRevenue" DESC;';
}

class TopG10ClientsRevenueQuery extends QueryMenuItem {
  const TopG10ClientsRevenueQuery();

  @override
  String get description => 'Топ-10 клиентов по общей прибыли в текущем году';

  @override
  String get query =>
      'SELECT "cl"."ClientID", "cl"."ClientName", SUM("c"."Price") AS "TotalProfit" FROM "Contracts" "c" JOIN "Clients" "cl" USING("ClientID") WHERE EXTRACT(YEAR FROM "c"."SigningDate") = EXTRACT(YEAR FROM CURRENT_DATE) GROUP BY "cl"."ClientID", "cl"."ClientName" ORDER BY "TotalProfit" DESC LIMIT 10;';
}

class TopGManagersYearQuery extends QueryMenuItem {
  const TopGManagersYearQuery();

  @override
  String get description =>
      'Список менеджеров по общей сумме контрактов за полгода';

  @override
  String get query =>
      'SELECT "m"."ManagerID", "m"."ManagerName", SUM("c"."Price") AS "TotalContractPrice" FROM "Managers" "m" JOIN "Contracts" "c" ON "m"."ManagerID" = "c"."ManagerID" WHERE "c"."SigningDate" >= CURRENT_DATE - INTERVAL \'6 months\' GROUP BY "m"."ManagerID", "m"."ManagerName" ORDER BY "TotalContractPrice" DESC;';
}

class DefiniteServiceSelectionQuery extends QuerySubMenuItem<String> {
  const DefiniteServiceSelectionQuery(super.queryParameters);

  @override
  String get description =>
      'Выборка контрактов с определенной услугой за последние 3 месяца';

  @override
  String query(String parameter) =>
      'SELECT "c"."ContractID" AS "Contract_ID", "co"."CompanyID" AS "Company_ID", "co"."CompanyName" AS "Company_Name", "cl"."ClientID" AS "Client_ID", "cl"."ClientName" AS "Client_Name", "ts"."TypeServiceID" AS "Type_Service_ID", "ts"."TypeServiceName" AS "Type_Service_Name", "s"."ServiceID" AS "Service_ID", "s"."ServiceName" AS "Service_Name", "c"."SigningDate" AS "Signing_Date", "c"."StartDate" AS "Start_Date", "c"."EndDate" AS "End_Date", "c"."PayDate" AS "Pay_Date", "c"."Price" AS "Price", "m"."ManagerID" AS "Manager_ID", "m"."ManagerName" AS "Manager_Name", "m"."ManagerPhone" AS "ManagerPhone" FROM "Contracts" "c" JOIN "Company" "co" USING ("CompanyID") JOIN "Clients" "cl" USING ("ClientID") JOIN "TypeService" "ts" USING ("TypeServiceID") JOIN "Service" "s" USING ("ServiceID") JOIN "Managers" "m" USING ("ManagerID") WHERE "s"."ServiceName" = \'${parameter}\' AND "SigningDate" >= CURRENT_DATE - INTERVAL \'3 months\'';
}

class ContractsWithDefiniteServiceSelectionQuery
    extends QuerySubMenuItem<String> {
  const ContractsWithDefiniteServiceSelectionQuery(super.queryParameters);

  @override
  String get description =>
      'Выборка контрактов с определенной услугой в текущем году';

  @override
  String query(String parameter) =>
      'SELECT "c"."ContractID", "co"."CompanyID", "co"."CompanyName", "cl"."ClientID", "cl"."ClientName", "cl"."City", "cl"."Address", "cl"."ClientPhone", "ts"."TypeServiceID", "ts"."TypeServiceName", "s"."ServiceID", "s"."ServiceName", "c"."SigningDate", "c"."StartDate", "c"."EndDate", "c"."PayDate", "c"."Price", "m"."ManagerID", "m"."ManagerName", "m"."ManagerPhone" FROM "Contracts" "c" JOIN "Service" "s" ON "c"."ServiceID" = "s"."ServiceID" JOIN "Company" "co" ON "c"."CompanyID" = "co"."CompanyID" JOIN "Clients" "cl" ON "c"."ClientID" = "cl"."ClientID" JOIN "TypeService" "ts" ON "c"."TypeServiceID" = "ts"."TypeServiceID" JOIN "Managers" "m" ON "c"."ManagerID" = "m"."ManagerID" WHERE "ts"."TypeServiceName" = \'${parameter}\' AND EXTRACT(YEAR FROM "c"."SigningDate") = EXTRACT(YEAR FROM CURRENT_DATE);';
}
