Manifest.set{|mf|
  mf.name "Pixiv Context Viewer"
  mf.description "Pixivのイラストを便利に見られたりするかも"
  mf.version "0.0.1"
  mf.manifest_version 2
  mf.content_scripts {|cs|
    cs.matches ["http://www.pixiv.net/*"]
    cs.css ["css/cv.css"]
    cs.js ["jquery.min.js", "handlebars.js", "PixivContextViewerView.js", "main_front.js"].map!{|x|
      "lib/" + x
    }
    cs.run_at ManifestContentScripts::DOCUMENT_END
  }
}
