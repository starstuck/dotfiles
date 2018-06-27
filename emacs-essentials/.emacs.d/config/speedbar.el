(add-hook 'speedbar-load-hook
          (lambda ()
            (speedbar-add-supported-extension "\\.json")
            (speedbar-add-supported-extension "\\.md")
            (speedbar-add-supported-extension "\\.sh")
            (speedbar-add-supported-extension "\\.sql")
            (Speedbar-add-supported-extension "\\.xml")))
