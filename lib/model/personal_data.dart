import 'package:e_vce/model/book_model.dart';
import 'package:e_vce/model/project_model.dart';

late List<String>? interest_tags;
late List<Book>? liked_books = [];
late List<Book>? saved_books = [];
late List<Project>? liked_projects = [];
late List<Project>? saved_projects = [];
late List<Book>? saved_subscriptions;
late List<Book>? recomendations;

late Book? present_adding_book = null;
late Book? present_editing_book = null;
late Project? present_adding_project = null;
late Project? present_editing_project = null;
