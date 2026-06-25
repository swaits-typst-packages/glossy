#import "/lib.typ": *

#set page(margin: 1em, width: auto, height: auto)
#set text(size: 10pt)
#set heading(numbering: "1")

// Test for Issue #14
// https://github.com/swaits-typst-packages/glossy/issues/14

#show: init-glossary.with((
  www: "World Wide Web",
))

= First <first>
The @www

#show ref.where(
  form: "normal",
): set ref(supplement: it => {
  if it.func() == heading {
    "Chapter"
  } else {
    auto
  }
})

The @www

= Second
The @www:both was introduced in @first.

