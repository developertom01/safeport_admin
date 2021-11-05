// To parse this JSON data, do
//
//     final dashboardSummary = dashboardSummaryFromJson(jsonString);

import 'dart:convert';

DashboardSummary dashboardSummaryFromJson(String str) => DashboardSummary.fromJson(json.decode(str)["check_count"]);

String dashboardSummaryToJson(DashboardSummary data) => json.encode(data.toJson());

class DashboardSummary {
    DashboardSummary({
        required this.total,
        required this.daily,
        required this.monthly,
        required this.yearly,
    });

    final int total;
    final int daily;
    final int monthly;
    final int yearly;

    factory DashboardSummary.fromJson(Map<String, dynamic> json) => DashboardSummary(
        total: json["total"],
        daily: json["daily"],
        monthly: json["monthly"],
        yearly: json["yearly"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
        "daily": daily,
        "monthly": monthly,
        "yearly": yearly,
    };
}
