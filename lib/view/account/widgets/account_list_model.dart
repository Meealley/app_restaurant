import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountListModel {
  final IconData icon;
  final String accountListName;

  AccountListModel({required this.icon, required this.accountListName});
}

List<AccountListModel> accounts = [
  AccountListModel(icon: FontAwesomeIcons.a, accountListName: 'Orders'),
  AccountListModel(
      icon: FontAwesomeIcons.locationArrow, accountListName: "Address"),
  AccountListModel(
      icon: FontAwesomeIcons.heart, accountListName: "Your Favorites"),
  AccountListModel(
      icon: FontAwesomeIcons.star, accountListName: "Restaurant Reward"),
  AccountListModel(icon: FontAwesomeIcons.wallet, accountListName: "Wallet"),
  AccountListModel(icon: FontAwesomeIcons.gift, accountListName: "Gift"),
  AccountListModel(
      icon: FontAwesomeIcons.suitcase, accountListName: "Preferences"),
  AccountListModel(icon: FontAwesomeIcons.person, accountListName: "Help"),
  AccountListModel(icon: FontAwesomeIcons.tag, accountListName: "Promotion"),
  AccountListModel(icon: FontAwesomeIcons.ticket, accountListName: "Pass"),
  AccountListModel(icon: FontAwesomeIcons.otter, accountListName: "Orders"),
  AccountListModel(icon: FontAwesomeIcons.gear, accountListName: "Settings"),
  AccountListModel(icon: FontAwesomeIcons.powerOff, accountListName: "Signout"),
];
