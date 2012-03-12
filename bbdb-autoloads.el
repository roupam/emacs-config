(provide 'bbdb-autoloads)
(eval-when-compile
  (condition-case ()
      (require 'custom)
    (error nil))
  (if (and (featurep 'custom) (fboundp 'custom-declare-variable)) ()
    (defmacro defgroup (&rest args)
      nil)
    (defmacro defcustom (var value doc &rest args)
      `(defvar ,var ,value ,doc))
    (defmacro defface (var value doc &rest args)
      `(make-face ,var))
    (defmacro define-widget (&rest args)
      nil)))

;;;### (autoloads (bbdb-insinuate-message bbdb-initialize
;;;### bbdb-multiple-buffers
;;;;;;  bbdb-submit-bug-report) "bbdb" "bbdb.el" (18007 56121))
;;; Generated autoloads from bbdb.el

(autoload (quote bbdb-submit-bug-report) "bbdb" "\

(defvar bbdb-multiple-buffers nil "\
You can also set this to a function returning a buffer name.")

(autoload (quote bbdb-initialize) "bbdb" "\
passed as arguments to initiate the appropriate insinuations.

 Initialization of mail/news readers:

   gnus       Initialize BBDB support for the gnus mail/news reader
              version 3.15 or newer.  If you pass the `gnus' symbol,
              you should probably also pass the `message' symbol.
   mh-e       Initialize BBDB support for the MH-E mail reader.
   rmail      Initialize BBDB support for the RMAIL mail reader.
   sendmail   Initialize BBDB support for sendmail (M-x mail).
   vm         Initialize BBDB support for the VM mail reader.
              NOTE: For the VM insinuation to work properly, you must
              either call `bbdb-initialize' with the `vm' symbol from
              within your VM initialization file (\"~/.vm\") or you
              must call `bbdb-insinuate-vm' manually from within your
              VM initialization file.

 Initialization of miscellaneous package:

   message    Initialize BBDB support for Message mode.
   reportmail Initialize BBDB support for the Reportmail mail
              notification package.
   sc or      Initialize BBDB support for the Supercite message
   supercite  citation package.
   w3         Initialize BBDB support for Web browsers." nil nil)

(autoload (quote bbdb-insinuate-message) "bbdb" "\

;;;***

;;;### (autoloads (bbdb-get-only-first-address-p
;;;### bbdb-get-addresses-headers
;;;;;;  bbdb-update-records bbdb-update-records-mode bbdb-help
;;;### bbdb-info
;;;;;;  bbdb-creation-no-change bbdb-creation-newer
;;;### bbdb-creation-older
;;;;;;  bbdb-timestamp-newer bbdb-timestamp-older bbdb-finger
;;;### bbdb-dial
;;;;;;  bbdb-add-or-remove-mail-alias bbdb-define-all-aliases
;;;### bbdb-yank
;;;;;;  bbdb-complete-name bbdb-read-addresses-with-completion
;;;### bbdb-completion-predicate
;;;;;;  bbdb-completion-check-record bbdb-show-all-recipients
;;;### bbdb-send-mail
;;;;;;  bbdb-dwim-net-address bbdb-sort-addresses bbdb-sort-phones
;;;;;;  bbdb-sort-notes bbdb-refile-record bbdb-omit-record
;;;### bbdb-display-record-with-layout
;;;;;;  bbdb-display-record-completely
;;;### bbdb-display-all-records-completely
;;;;;;  bbdb-toggle-records-display-layout
;;;### bbdb-toggle-all-records-display-layout
;;;;;;  bbdb-delete-current-record bbdb-delete-current-field-or-record
;;;;;;  bbdb-transpose-fields bbdb-record-edit-property
;;;### bbdb-record-edit-notes
;;;;;;  bbdb-edit-current-field bbdb-insert-new-field
;;;### bbdb-append-records
;;;;;;  bbdb-append-records-p bbdb-apply-next-command-to-all-records
;;;;;;  bbdb-create bbdb-redisplay-records bbdb-changed bbdb-notes
;;;;;;  bbdb-net bbdb-company bbdb-name bbdb bbdb-search-invert-set)
;;;;;;  "bbdb-com" "bbdb-com.el" (18007 56121))
;;; Generated autoloads from bbdb-com.el

(autoload (quote bbdb-search-invert-set) "bbdb-com" "\
Sets `bbdb-search-invert' to t.
You will have to call this function again, if you want to
do repeated inverted searches." t nil)

(autoload (quote bbdb) "bbdb-com" "\
in either the name(s), company, network address, or notes." t nil)

(autoload (quote bbdb-name) "bbdb-com" "\
\(or ``alternate'' names)." t nil)

(autoload (quote bbdb-company) "bbdb-com" "\

(autoload (quote bbdb-net) "bbdb-com" "\

(autoload (quote bbdb-notes) "bbdb-com" "\

(autoload (quote bbdb-changed) "bbdb-com" "\
the database was last saved." t nil)

(autoload (quote bbdb-redisplay-records) "bbdb-com" "\
If possible, you should call `bbdb-redisplay-one-record' instead." nil nil)

(autoload (quote bbdb-create) "bbdb-com" "\
using the echo area, inserts the new record in the db, sorted alphabetically,
and offers to save the db file.  DO NOT call this from a program.  Call
bbdb-create-internal instead." t nil)

(autoload (quote bbdb-apply-next-command-to-all-records) "bbdb-com" "\
of the records currently displayed.  (Note that this only works for
certain commands.)" t nil)

(autoload (quote bbdb-append-records-p) "bbdb-com" nil nil nil)

(autoload (quote bbdb-append-records) "bbdb-com" "\
new records to those in the *BBDB* buffer.

With an prefix arg (C-u) toggle between always append and no append.
With an prefix arg that is a positive number append will be enabled for that
many times.
With any other argument append will be enabled once." t nil)

(autoload (quote bbdb-insert-new-field) "bbdb-com" "\
are prompted for if not supplied.

If you are inserting a new phone-number field, you can control whether
it is a north american or european phone number by providing a prefix
argument.  A prefix arg of ^U means it's to be a euronumber, and any
other prefix arg means it's to be a a structured north american number.
Otherwise, which style is used is controlled by the variable
`bbdb-north-american-phone-numbers-p'.

If you are inserting a new net address, you can have BBDB append a
default domain to any net address that does not contain one.  Set
`bbdb-default-domain' to a string such as \"mycompany.com\" (or,
depending on your environment, (getenv \"DOMAINNAME\")), and
\"@mycompany.com\" will be appended to an address that is entered as
just a username.  A prefix arg of ^U (or a `bbdb-default-domain'
value of \"\", the default) means do not alter the address." t nil)

(autoload (quote bbdb-edit-current-field) "bbdb-com" "\
the current line (this is only meaningful in the \"*BBDB*\" buffer.)   If the
cursor is in the middle of a multi-line field, such as an address or comments
section, then the entire field is edited, not just the current line." t nil)

(autoload (quote bbdb-record-edit-notes) "bbdb-com" nil t nil)

(autoload (quote bbdb-record-edit-property) "bbdb-com" nil t nil)

(autoload (quote bbdb-transpose-fields) "bbdb-com" "\
If the cursor is on a field of a BBDB record, that field and the previous
field will be transposed.

With argument ARG, takes previous line and moves it past ARG fields.
With argument 0, interchanges field point is in with field mark is in.

Both fields must be in the same record, and must be of the same basic type
\(that is, you can use this command to change the order in which phone-number
fields are listed, but you can't use it to make an address appear before a
phone number; the order of field types is fixed.)" t nil)

(autoload (quote bbdb-delete-current-field-or-record) "bbdb-com" "\
that line represents from the database.  If the cursor is on the first line
of a database entry (the name/company line) then the entire entry will be
deleted." t nil)

(autoload (quote bbdb-delete-current-record) "bbdb-com" "\
Pressing \\<bbdb-mode-map>\\[bbdb-apply-next-command-to-all-records] will
delete all records listed in the BBDB buffer." t nil)

(autoload (quote bbdb-toggle-all-records-display-layout) "bbdb-com" "\
Like `bbdb-toggle-records-display-layout' but for all visible records." t nil)

(autoload (quote bbdb-toggle-records-display-layout) "bbdb-com" "\
\(multi-line or one-line display.)  With a numeric argument of 0, the
current record will unconditionally be made elided; with any other argument,
the current record will unconditionally be shown expanded.
\\<bbdb-mode-map>
If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-toggle-records-display-layout]\" is used instead of simply \"\\[bbdb-toggle-records-display-layout]\", then the state of all records will
be changed instead of just the one at point.  In this case, an argument
of 0 means that all records will unconditionally be made elided; any other
numeric argument means that all of the records will unconditionally be shown
expanded; and no numeric argument means that the records are made to be in
the opposite state of the record under point." t nil)

(autoload (quote bbdb-display-all-records-completely) "bbdb-com" "\
The display layout `full-multi-line' is used for this." t nil)

(autoload (quote bbdb-display-record-completely) "bbdb-com" "\
The display layout `full-multi-line' is used for this." t nil)

(autoload (quote bbdb-display-record-with-layout) "bbdb-com" "\

(autoload (quote bbdb-omit-record) "bbdb-com" "\
database.  With a prefix argument, omit the next N records.  If negative,
omit backwards." t nil)

(autoload (quote bbdb-refile-record) "bbdb-com" "\
record under point after copying all of the data within it into some other
record.  this is useful if you realize that somehow a redundant record has
gotten into the database, and you want to merge it with another.

If both records have names and/or companies, you are asked which to use.
Phone numbers, addresses, and network addresses are simply concatenated.
The first record is the record under the point; the second is prompted for.
Completion behaviour is as dictated by the variable `bbdb-completion-type'." t nil)

(autoload (quote bbdb-sort-notes) "bbdb-com" "\
Can be used in `bbdb-change-hook'." nil nil)

(autoload (quote bbdb-sort-phones) "bbdb-com" "\
Can be used in `bbdb-change-hook'." nil nil)

(autoload (quote bbdb-sort-addresses) "bbdb-com" "\
Can be used in `bbdb-change-hook'." nil nil)

(autoload (quote bbdb-dwim-net-address) "bbdb-com" "\
given address is the address the mail is destined to; this is formatted like
\"Firstname Lastname <addr>\" unless both the first name and last name are
constituents of the address, as in John.Doe@SomeHost, or the address is
already in the form \"Name <foo>\" or \"foo (Name)\", in which case the
address is used as-is. If `bbdb-dwim-net-address-allow-redundancy' is non-nil,
the name is always included.  If `bbdb-dwim-net-address-allow-redundancy' is
'netonly the name is never included!" nil nil)

(autoload (quote bbdb-send-mail) "bbdb-com" "\
The first (most-recently-added) address is used if there are more than one.
\\<bbdb-mode-map>
If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-send-mail]\" is used instead of simply \"\\[bbdb-send-mail]\", then mail will be sent to all of the
folks listed in the *BBDB* buffer instead of just the person at point." t nil)

(autoload (quote bbdb-show-all-recipients) "bbdb-com" "\

(autoload (quote bbdb-completion-check-record) "bbdb-com" nil nil nil)

(autoload (quote bbdb-completion-predicate) "bbdb-com" "\
Obey the semantics of `bbdb-completion-type'." nil nil)

(autoload (quote bbdb-read-addresses-with-completion) "bbdb-com" "\

(autoload (quote bbdb-complete-name) "bbdb-com" "\
preceeding newline, colon, or comma, or the value of START-POS).  If
what has been typed is unique, insert an entry of the form \"User Name
<net-addr>\" (although see documentation for
bbdb-dwim-net-address-allow-redundancy).  If it is a valid completion
but not unique, a list of completions is displayed.

If the completion is done and `bbdb-complete-name-allow-cycling' is
true then cycle through the nets for the matching record.

When called with a prefix arg then display a list of all nets.

Completion behaviour can be controlled with `bbdb-completion-type'." t nil)

(autoload (quote bbdb-yank) "bbdb-com" "\

(autoload (quote bbdb-define-all-aliases) "bbdb-com" "\
Every record which has a `mail-alias' field will have a mail alias defined for
it which is the contents of that field.  If there are multiple comma-separated
words in the `mail-alias' field, then all of those words will be defined as
aliases for that person.

If multiple entries in the database have the same mail alias, then that alias
expands to a comma-separated list of the primary network addresses of all of
those people.

An alias ending in \"*\" it will be expanded to all the nets of the record.
An alias ending in \"[NTH]\" will expand the the NTH net of the record.

Special nets exist and expand to other nets using one of `bbdb-magic-net-*' or
`bbdb-magic-net-1' functions or user defined function.  Still also magic nets
may not contain the comma character.   If you have to use it put it into an
own magic net function or us the octal escape sequence \"\\054\".

Nets matching \"FUNCTION/ARG\", i.e. they have at least one \"/\" character in
them, will be passed to the function `bbdb-magic-net-FUNCTION' with the string
argument ARG.

Nets starting with a \"(\" will be considered as a lisp list, where the
first list element is prefixed by `bbdb-magic-net' and then called
as function with the rest of the list as arguments.

Nets which do not contain an \"@\" and exist as alias are expanded recursively.
This can be used to define hierarchical aliases.

Other nets are formatted by `bbdb-dwim-net-address'." t nil)

(autoload (quote bbdb-add-or-remove-mail-alias) "bbdb-com" "\
When called with prefix argument it will remove the alias.
We honor `bbdb-apply-next-command-to-all-records'!
The new alias will only be added if it isn't there yet." t nil)

(autoload (quote bbdb-dial) "bbdb-com" "\
If the point is at the beginning of a record, dial the first
phone number.  Does not dial the extension.  Does not apply the
transformations from bbdb-dial-local-prefix-alist if a prefix arg
is given." t nil)

(autoload (quote bbdb-finger) "bbdb-com" "\
If this command is executed from the *BBDB* buffer, finger the network
address of the record at point; otherwise, it prompts for a user.
With a numeric prefix argument, finger the Nth network address of the
current record; with a prefix argument of ^U, finger all of them.
The *finger* buffer is filled asynchronously, meaning that you don't
have to wait around for it to finish; but fingering another user before
the first finger has finished could have unpredictable results.
\\<bbdb-mode-map>
If this command is executed from the *BBDB* buffer, it may be prefixed
with \"\\[bbdb-apply-next-command-to-all-records]\" (as in \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-finger]\" instead of simply \"\\[bbdb-finger]\"), meaning to finger all of
the users currently listed in the *BBDB* buffer instead of just the one
at point.  The numeric prefix argument has the same interpretation.

You can define a special network address to \"finger\" by defining a
field `finger-host' (default value of `bbdb-finger-host-field')." t nil)

(autoload (quote bbdb-timestamp-older) "bbdb-com" "\
DATE must be in yyyy-mm-dd format." t nil)

(autoload (quote bbdb-timestamp-newer) "bbdb-com" "\
DATE must be in yyyy-mm-dd format." t nil)

(autoload (quote bbdb-creation-older) "bbdb-com" "\
DATE must be in yyyy-mm-dd format." t nil)

(autoload (quote bbdb-creation-newer) "bbdb-com" "\
DATE must be in yyyy-mm-dd format." t nil)

(autoload (quote bbdb-creation-no-change) "bbdb-com" "\

(autoload (quote bbdb-info) "bbdb-com" nil t nil)

(autoload (quote bbdb-help) "bbdb-com" nil t nil)

(defvar bbdb-update-records-mode (quote annotating) "\
Set this to an expression which evaluates either to 'searching or
'annotating.  When set to 'annotating email addresses will be fed to
`bbdb-annotate-message-sender' in order to update existing records or create
new ones.  A value of 'searching will search just for existing records having
the right net.

There is a version of this variable for each MUA, which overrides this variable
when set!

This variable is also used for inter-function communication between the
functions `bbdb-update-records' and `bbdb-prompt-for-create'.")

(autoload (quote bbdb-update-records) "bbdb-com" "\
creating or modifying them as necessary.  A record will be created if
AUTO-CREATE-P is non-nil or if OFFER-TO-CREATE is true and the user
confirms the creation.

`bbdb-update-records-mode' controls if records are upodated or not.
A MUA specific variable, e.g. `bbdb/vm-update-records-mode', can
overwrite this.

See also `bbdb-get-only-first-address-p' to limit the update to the
sender of the message.

When hitting C-g once you will not be asked any more for new people listed
in this message, but it will search only for existing records.  When hitting
C-g again it will stop scanning." nil nil)

(defvar bbdb-get-addresses-headers (quote ((authors "From" "Resent-From" "Reply-To") (recipients "Resent-To" "Resent-CC" "To" "CC" "BCC"))) "\
The headers are grouped into two classes, the authors and the senders headers.")

(defvar bbdb-get-only-first-address-p nil "\
Changing this variable will show its effect only after clearing the
`bbdb-message-cache' of a folder or closing and visiting it again.")

;;;***

;;;### (autoloads (bbdb-create-ftp-site bbdb-ftp) "bbdb-ftp"
;;;### "bbdb-ftp.el"
;;;;;;  (17895 55724))
;;; Generated autoloads from bbdb-ftp.el

(autoload (quote bbdb-ftp) "bbdb-ftp" "\
If this command is executed from the *BBDB* buffer, ftp the site of
the record at point; otherwise, it prompts for an ftp-site." t nil)

(autoload (quote bbdb-create-ftp-site) "bbdb-ftp" "\
Prompts for all relevant info using the echo area,
inserts the new record in the db, sorted alphabetically." t nil)

;;;***

;;;### (autoloads (bbdb-insinuate-gnus
;;;### bbdb/gnus-summary-show-all-recipients
;;;;;;  bbdb/gnus-score bbdb/gnus-snarf-signature
;;;### bbdb/gnus-show-all-recipients
;;;;;;  bbdb/gnus-show-records bbdb/gnus-annotate-sender
;;;### bbdb/gnus-update-records
;;;;;;  bbdb/gnus-update-record) "bbdb-gnus" "bbdb-gnus.el" (17895
;;;;;;  55725))
;;; Generated autoloads from bbdb-gnus.el

(autoload (quote bbdb/gnus-update-record) "bbdb-gnus" "\
or modifying it as necessary.  A record will be created if
bbdb/news-auto-create-p is non-nil, or if OFFER-TO-CREATE is true and
the user confirms the creation." nil nil)

(autoload (quote bbdb/gnus-update-records) "bbdb-gnus" "\
or modifying it as necessary.  A record will be created if
bbdb/news-auto-create-p is non-nil or if OFFER-TO-CREATE is true
and the user confirms the creation.

The variable `bbdb/gnus-update-records-mode' controls what actions
are performed and it might override `bbdb-update-records-mode'.

When hitting C-g once you will not be asked anymore for new people listed
in this message, but it will search only for existing records.  When hitting
C-g again it will stop scanning." nil nil)

(autoload (quote bbdb/gnus-annotate-sender) "bbdb-gnus" "\
corresponding to the sender of this message.  If REPLACE is non-nil,
replace the existing notes entry (if any)." t nil)

(autoload (quote bbdb/gnus-show-records) "bbdb-gnus" "\
This buffer will be in `bbdb-mode', with associated keybindings." t nil)

(autoload (quote bbdb/gnus-show-all-recipients) "bbdb-gnus" "\

(autoload (quote bbdb/gnus-snarf-signature) "bbdb-gnus" "\

(autoload (quote bbdb/gnus-score) "bbdb-gnus" "\
every member of the net field in records which also have a gnus-score
field.  This allows the BBDB to serve as a supplemental global score
file, with the advantage that it can keep up with multiple and changing
addresses better than the traditionally static global scorefile." nil nil)

(autoload (quote bbdb/gnus-summary-show-all-recipients) "bbdb-gnus" "\

(autoload (quote bbdb-insinuate-gnus) "bbdb-gnus" "\

;;;***

;;;### (autoloads (bbdb-menu bbdb-fontify-buffer) "bbdb-gui"
;;;### "bbdb-gui.el"
;;;;;;  (17961 46735))
;;; Generated autoloads from bbdb-gui.el

(autoload (quote bbdb-fontify-buffer) "bbdb-gui" nil t nil)

(autoload (quote bbdb-menu) "bbdb-gui" nil t nil)

;;;***

;;;### (autoloads (bbdb-force-record-create
;;;### sample-bbdb-canonicalize-net-hook
;;;;;;  bbdb-auto-notes-hook bbdb-ignore-some-messages-hook
;;;### bbdb-ignore-selected-messages-hook
;;;;;;  bbdb-ignore-most-messages-hook bbdb-extract-field-value
;;;### bbdb-header-start
;;;;;;  bbdb-creation-date-hook bbdb-timestamp-hook) "bbdb-hooks"
;;;;;;  "bbdb-hooks.el" (17961 46735))
;;; Generated autoloads from bbdb-hooks.el

(autoload (quote bbdb-timestamp-hook) "bbdb-hooks" "\
for the given record which contains the time when it was last modified.  If
there is such a field there already, it is changed, otherwise it is added." nil nil)

(autoload (quote bbdb-creation-date-hook) "bbdb-hooks" "\
which is the current time string." nil nil)

(autoload (quote bbdb-header-start) "bbdb-hooks" "\
message.  This will not necessarily be in the current buffer." nil nil)

(autoload (quote bbdb-extract-field-value) "bbdb-hooks" "\
that field in the current message, or nil.  This works whether you're in
Gnus, Rmail, or VM.  This works on multi-line fields, but if more than
one field of the same name is present, only the last is returned.  It is
expected that the current buffer has a message in it, and (point) is at the
beginning of the message headers." nil nil)

(autoload (quote bbdb-ignore-most-messages-hook) "bbdb-hooks" "\
This will automatically create BBDB entries for messages which match
the bbdb-ignore-most-messages-alist (which see) and *no* others." nil nil)

(autoload (quote bbdb-ignore-selected-messages-hook) "bbdb-hooks" "\
This will automatically create BBDB entries for messages based on a
combination of bbdb-ignore-some-messages-alist and
bbdb-ignore-most-messages-alist.  It first looks at the SOME list.  If
that doesn't disqualify a message, then it looks at the MOST list.  If
that qualifies the message, the record is auto-created, but a
confirmation is conditionally sought, based on the value of
`bbdb-ignore-selected-messages-confirmation'." nil nil)

(autoload (quote bbdb-ignore-some-messages-hook) "bbdb-hooks" "\
This will automatically create BBDB entries for messages which do *not*
match the `bbdb-ignore-some-messages-alist' (which see)." nil nil)

(autoload (quote bbdb-auto-notes-hook) "bbdb-hooks" "\
to the notes field of the BBDB record corresponding to the current record
based on the header of the current message.  See the documentation for
the variables `bbdb-auto-notes-alist' and `bbdb-auto-notes-ignore'." nil nil)

(autoload (quote sample-bbdb-canonicalize-net-hook) "bbdb-hooks" nil nil nil)

(autoload (quote bbdb-force-record-create) "bbdb-hooks" "\
You might add this to the reply hook of your MUA in order to automatically
get records added for those people you reply to." t nil)

;;;***

;;;### (autoloads (bbdb-merge-file bbdb-merge-record) "bbdb-merge"
;;;;;;  "bbdb-merge.el" (17865 34627))
;;; Generated autoloads from bbdb-merge.el

(autoload (quote bbdb-merge-record) "bbdb-merge" "\

Merges new-record into your bbdb, using DATE to check who's more
up-to-date and OVERRIDE to decide who gets precedence if two dates
match. DATE can be extracted from a notes if it's an alist with an
element marked timestamp. Set OVERRIDE to 'new to allow the new record
to stomp on existing data, 'old to preserve existing data or nil to
merge both together. If it can't find a record to merge with, it will
create a new record. If MERGE-RECORD is set, it's a record discovered
by other means that should be merged with.

Returns the Grand Unified Record." nil nil)

(autoload (quote bbdb-merge-file) "bbdb-merge" "\

;;;***

;;;### (autoloads (bbdb-insinuate-mh bbdb/mh-show-sender
;;;### bbdb/mh-annotate-sender
;;;;;;  bbdb/mh-update-record) "bbdb-mhe" "bbdb-mhe.el" (17968 20036))
;;; Generated autoloads from bbdb-mhe.el

(autoload (quote bbdb/mh-update-record) "bbdb-mhe" "\
modifying it as necessary.  A record will be created if
bbdb/mail-auto-create-p is non-nil, or if OFFER-TO-CREATE is true and
the user confirms the creation." nil nil)

(autoload (quote bbdb/mh-annotate-sender) "bbdb-mhe" "\
corresponding to the sender of this message.  If REPLACE is non-nil,
replace the existing notes entry (if any)." t nil)

(autoload (quote bbdb/mh-show-sender) "bbdb-mhe" "\
This buffer will be in bbdb-mode, with associated keybindings." t nil)

(autoload (quote bbdb-insinuate-mh) "bbdb-mhe" "\

;;;***

;;;### (autoloads (bbdb-migrate-update-file-version
;;;### bbdb-migrate-rewrite-all
;;;;;;  bbdb-unmigrate-record bbdb-migrate bbdb-migration-query)
;;;;;;  "bbdb-migrate" "bbdb-migrate.el" (17895 55725))
;;; Generated autoloads from bbdb-migrate.el

(autoload (quote bbdb-migration-query) "bbdb-migrate" "\
ONDISK is the version number of the database as currently stored on
disk.  Returns the version for the saved database." nil nil)

(autoload (quote bbdb-migrate) "bbdb-migrate" "\
`bbdb-file-format-migration') to the current version (in
`bbdb-file-format')." nil nil)

(autoload (quote bbdb-unmigrate-record) "bbdb-migrate" "\
`bbdb-file-format') to the version to be saved (the cdr of
`bbdb-file-format-migration')." nil nil)

(autoload (quote bbdb-migrate-rewrite-all) "bbdb-migrate" "\
are updating an old file format.  MESSAGE-P says whether to sound off
for each record converted.  If RECORDS is non-nil, its value will be
used as the list of records to update." nil nil)

(autoload (quote bbdb-migrate-update-file-version) "bbdb-migrate" "\
version." nil nil)

;;;***

;;;### (autoloads (bbdb-print) "bbdb-print" "bbdb-print.el" (17895
;;;;;;  55725))
;;; Generated autoloads from bbdb-print.el

(autoload (quote bbdb-print) "bbdb-print" "\
If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-print]\" is used instead of simply \"\\[bbdb-print]\", then includes only the
people currently in the *BBDB* buffer.  With a prefix argument, makes
a brief (one-line-per-entry) printout.

There are various variables for customizing the content & format of
the printout, notably the variables `bbdb-print-alist' and
`bbdb-print-require'.  See the file bbdb-print.el for more information." t nil)

;;;***

;;;### (autoloads (bbdb-insinuate-reportmail) "bbdb-reportmail"
;;;### "bbdb-reportmail.el"
;;;;;;  (17895 55725))
;;; Generated autoloads from bbdb-reportmail.el

(autoload (quote bbdb-insinuate-reportmail) "bbdb-reportmail" "\

;;;***

;;;### (autoloads (bbdb-insinuate-rmail bbdb/rmail-show-sender
;;;### bbdb/rmail-annotate-sender
;;;;;;  bbdb/rmail-update-records bbdb/rmail-update-record)
;;;### "bbdb-rmail"
;;;;;;  "bbdb-rmail.el" (17961 46736))
;;; Generated autoloads from bbdb-rmail.el

(autoload (quote bbdb/rmail-update-record) "bbdb-rmail" nil nil nil)

(autoload (quote bbdb/rmail-update-records) "bbdb-rmail" "\
creating or modifying them as necessary.  A record will be created if
bbdb/mail-auto-create-p is non-nil or if OFFER-TO-CREATE is true, and
the user confirms the creation.

The variable `bbdb/rmail-update-records-mode' controls what actions
are performed and it might override `bbdb-update-records-mode'.

When hitting C-g once you will not be asked anymore for new people
listed n this message, but it will search only for existing records.
When hitting C-g again it will stop scanning." nil nil)

(autoload (quote bbdb/rmail-annotate-sender) "bbdb-rmail" "\
corresponding to the sender of this message.  If REPLACE is non-nil,
replace the existing notes entry (if any)." t nil)

(autoload (quote bbdb/rmail-show-sender) "bbdb-rmail" "\
This buffer will be in bbdb-mode, with associated keybindings." t nil)

(autoload (quote bbdb-insinuate-rmail) "bbdb-rmail" "\

;;;***

;;;### (autoloads (bbdb-insinuate-sc bbdb/sc-default) "bbdb-sc"
;;;### "bbdb-sc.el"
;;;;;;  (17895 55725))
;;; Generated autoloads from bbdb-sc.el

(autoload (quote bbdb/sc-default) "bbdb-sc" "\
contains only an e-mail address, lookup e-mail address in
BBDB, and prepend a new \"from\" field to `sc-mail-info'." nil nil)

(autoload (quote bbdb-insinuate-sc) "bbdb-sc" "\

;;;***

;;;### (autoloads (bbdb-rfc822-addresses
;;;### bbdb-extract-address-components
;;;;;;  bbdb-snarf-region bbdb-snarf) "bbdb-snarf" "bbdb-snarf.el"
;;;;;;  (17961 46736))
;;; Generated autoloads from bbdb-snarf.el

(autoload (quote bbdb-snarf) "bbdb-snarf" "\
We assume things are line-broken and paragraph-bounded.
The name comes first and other fields (address,
phone, email, web pages) are recognized by context.

Required context:
    addresses end with \"City, State ZIP\" or \"City, State\"
    phones match bbdb-snarf-phone-regexp
        (currently US-style phones)
    e-mail addresses have @'s in them
    web sites are recognized by http:// or www.

Address and phone context are currently US-specific;
patches to internationalize these assumptions are welcome.

\\[bbdb-snarf] is similar to \\[bbdb-whois-sentinel], but less specialized." t nil)

(autoload (quote bbdb-snarf-region) "bbdb-snarf" "\
more details." t nil)

(autoload (quote bbdb-extract-address-components) "bbdb-snarf" "\
If extracting fails one probably has to adjust the variable
`bbdb-extract-address-component-regexps'." nil nil)

(autoload (quote bbdb-rfc822-addresses) "bbdb-snarf" "\

You can't do this with rfc822.el in any sort of useful way because it discards
the comments. You can't do this with mail-extr.el because the multiple address
parsing in GNU Emacs appears to be broken beyond belief, and the XEmacs
version doesn't support multiple addresses." nil nil)

;;;***

;;;### (autoloads (bbdb-srv-add-phone
;;;### bbdb/srv-auto-create-mail-news-dispatcher
;;;;;;  bbdb/srv-handle-headers-with-delay) "bbdb-srv" "bbdb-srv.el"
;;;;;;  (17895 55726))
;;; Generated autoloads from bbdb-srv.el

(autoload (quote bbdb/srv-handle-headers-with-delay) "bbdb-srv" "\
This is so that trying to display many records in succession won't queue them
up, but will end up only displaying a record when no displays have been
requested for a couple of seconds." nil nil)

(defalias (quote bbdb-srv) (quote bbdb/srv-handle-headers-with-delay))

(autoload (quote bbdb/srv-auto-create-mail-news-dispatcher) "bbdb-srv" "\
This will try to decide if this is a mail message or a news message, and then
run either bbdb/news-auto-create-p or bbdb/mail-auto-create-p as appropriate.
\(The heuristic is that news messages never have a Status or X-Mozilla-Status
header; and that mail messages never have Path headers.)" nil nil)

(autoload (quote bbdb-srv-add-phone) "bbdb-srv" nil nil nil)

;;;***

;;;### (autoloads (bbdb-insinuate-vm bbdb/vm-set-auto-folder-alist
;;;;;;  bbdb/vm-set-auto-folder-alist-headers
;;;bbdb/vm-set-auto-folder-alist-field
;;;;;;  bbdb/vm-show-sender bbdb/vm-show-all-recipients
;;;bbdb/vm-show-records
;;;;;;  bbdb/vm-annotate-sender bbdb/vm-update-records
;;;bbdb/vm-update-record)
;;;;;;  "bbdb-vm" "bbdb-vm.el" (18007 56121))
;;; Generated autoloads from bbdb-vm.el

(autoload (quote bbdb/vm-update-record) "bbdb-vm" nil nil nil)

(autoload (quote bbdb/vm-update-records) "bbdb-vm" "\
creating or modifying them as necessary.  A record will be created if
bbdb/mail-auto-create-p is non-nil or if OFFER-TO-CREATE is true, and
the user confirms the creation.

The variable `bbdb/vm-update-records-mode' controls what actions
are performed and it might override `bbdb-update-records-mode'.

When hitting C-g once you will not be asked anymore for new people listed
in this message, but it will search only for existing records.  When hitting
C-g again it will stop scanning." nil nil)

(autoload (quote bbdb/vm-annotate-sender) "bbdb-vm" "\
corresponding to the sender of this message.  If REPLACE is non-nil,
replace the existing notes entry (if any)." t nil)

(autoload (quote bbdb/vm-show-records) "bbdb-vm" "\
This buffer will be in bbdb-mode, with associated keybindings." t nil)

(autoload (quote bbdb/vm-show-all-recipients) "bbdb-vm" "\

(autoload (quote bbdb/vm-show-sender) "bbdb-vm" "\
With a prefix argument show the recipients instead,
with two prefix arguments show all records.
This buffer will be in `bbdb-mode', with associated keybindings." t nil)

(defvar bbdb/vm-set-auto-folder-alist-field (quote vm-folder) "\

(defvar bbdb/vm-set-auto-folder-alist-headers (quote ("From:" "To:" "CC:")) "\
The order in this list is the order how matching will be performed!")

(autoload (quote bbdb/vm-set-auto-folder-alist) "bbdb-vm" "\
For each record that has a 'vm-folder' attribute, add an
element (email-regexp . folder) to the `vm-auto-folder-alist'.

The element gets added to the 'element-name' sublist of the
`vm-auto-folder-alist'.

The car of the element consists of all the email addresses for the
bbdb record concatenated with OR; the cdr is the value of the
vm-folder attribute.

If the first character of vm-folders value is a quote ' it will be
parsed as lisp expression and is evaluated to return a folder name,
e.g. define you own function `my-folder-name' and set it to
        '(my-folder-name)" t nil)

(autoload (quote bbdb-insinuate-vm) "bbdb-vm" "\

;;;***

;;;### (autoloads (bbdb-insinuate-w3 bbdb-www-grab-homepage bbdb-www)
;;;;;;  "bbdb-w3" "bbdb-w3.el" (17895 55726))
;;; Generated autoloads from bbdb-w3.el

(autoload (quote bbdb-www) "bbdb-w3" "\
\\[bbdb-apply-next-command-to-all-records]\\[bbdb-www] means to try all records currently visible.
Non-interactively, do all records if arg is nonnil." t nil)

(autoload (quote bbdb-www-grab-homepage) "bbdb-w3" "\

(autoload (quote bbdb-insinuate-w3) "bbdb-w3" "\

;;;***

;;;### (autoloads (bbdb-whois) "bbdb-whois" "bbdb-whois.el" (15027
;;;;;;  40198))
;;; Generated autoloads from bbdb-whois.el

(autoload (quote bbdb-whois) "bbdb-whois" nil t nil)

;;;***

;;;### (autoloads (bbdb-load-touchtones bbdb-sound-volume
;;;### bbdb-sounds-directory
;;;;;;  bbdb-xemacs-display-completion-list) "bbdb-xemacs"
;;;### "bbdb-xemacs.el"
;;;;;;  (15417 25496))
;;; Generated autoloads from bbdb-xemacs.el

(autoload (quote bbdb-xemacs-display-completion-list) "bbdb-xemacs" "\
Allows callbacks on XEmacs `display-completion-list' is called with
`:activate-callback CALLBACK' if CALLBACK is non-nil.
`:user-data DATA' is also used if DATA is non-nil.
Neither are used if CALLBACK is nil." nil nil)

(defvar bbdb-sounds-directory (expand-file-name "~/.xemacs/etc/sounds") "\

(defvar bbdb-sound-volume 50 "\

(autoload (quote bbdb-load-touchtones) "bbdb-xemacs" "\
The directory specified in `bbdb-sounds-directory' is searched for the files
touchtone.*\\.\\(wav\\|au\\) as named in `bbdb-sound-files'.
They are stored in `sound-alist' as touchtone0 to touchtone11." t nil)

;;;***