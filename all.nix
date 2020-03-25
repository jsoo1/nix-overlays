[
  (self: super: { checkmake = super.callPackage (import ./checkmake.nix) { }; })
  (import ../emacs-overlay/default.nix)
]
