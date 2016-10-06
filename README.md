Enables hijackey (https://github.com/louispan/hijackey.git) key combinations for emacs.

# Installation

```
(require 'quelpa)
(unless (require 'hijackey-emacs nil t)
    (quelpa '(hijackey-emacs :repo "louispan/hijackey-emacs" :fetcher github))
    (require 'hijackey-emacs))

```

See esoteric-emacs (https://github.com/louispan/esoteric-emacs.git) for opinionated emacs settings that use hijackey-emacs.