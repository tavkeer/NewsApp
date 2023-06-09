class FeedModleClass {
  FeedModleClass({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  late final String? status;
  late final int? totalResults;
  late final List<dynamic>? articles;

  FeedModleClass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'] ?? 0;
    articles =
        List.from(json['articles']).map((e) => Articles.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status ?? "";
    data['totalResults'] = totalResults ?? 0;
    data['articles'] = articles!.map((e) => e.toJson()).toList();
    return data;
  }
}

// ******************---------***************************
// Article class of using content of actual news articles
class Articles {
  Articles({
    required this.source,
    this.author,
    required this.title,
    this.description,
    required this.url,
    this.urlToImage,
    required this.publishedAt,
    this.content,
  });
  late final Source? source;
  late final String? author;
  late final String? title;
  late final String? description;
  late final String? url;
  late final String? urlToImage;
  late final String? publishedAt;
  late final String? content;

  Articles.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = "";
    title = json['title'] ?? "";
    description = "";
    url = json['url'] ?? "";
    urlToImage = "";
    publishedAt = json['publishedAt'];
    content = "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['source'] = source!.toJson();
    data['author'] = author ?? "";
    data['title'] = title ?? "";
    data['description'] = description ?? "";
    data['url'] = url ?? "";
    data['urlToImage'] = urlToImage ?? "";
    data['publishedAt'] = publishedAt ?? "";
    data['content'] = content ?? "";
    return data;
  }
}

//  ***********---------*************
// Another model of inside data usage
class Source {
  Source({
    this.id,
    required this.name,
  });
  late final String? id;
  late final String? name;

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? "";
    name = json['name'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id ?? "";
    data['name'] = name ?? "";
    return data;
  }
}
