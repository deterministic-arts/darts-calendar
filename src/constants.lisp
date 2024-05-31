#|                                           -*- mode: lisp; coding: utf-8 -*-
  Deterministic Arts -- Date and time library
  Copyright (c) 2023 Dirk Esser

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
|#

(in-package #:deterministic-arts.calendar.internals)

;; These constants are defined really late, with ASDF being instructed to
;; load/compile this file only after having loaded the rest of the system.
;; We want them to be available for clients of the library, but do not use
;; them ourselves (for that, we have the +XXX+ versions, for which we can
;; control that nobody modifies the values)
;;
;; The lisp system is allowed to evaluate the constant values at compile-time,
;; which is the reason for these shenanigans. I would love for there to
;; be some kind of `defimmutable` which would act like `defvar` but also
;; proclaim the binding constant once it has been established. Alas, it is
;; what it is...

(defconstant calendar:min-time +min-time+)
(defconstant calendar:max-time +max-time+)

(defconstant calendar:min-date +min-date+)
(defconstant calendar:max-date +max-date+)

(defconstant calendar:min-timestamp +min-timestamp+)
(defconstant calendar:max-timestamp +max-timestamp+)

(defconstant calendar:min-instant +min-instant+)
(defconstant calendar:max-instant +max-instant+)

(defconstant calendar:midnight +midnight+)
(defconstant calendar:noon +noon+)

(defconstant calendar:epoch-date +epoch-date+)
(defconstant calendar:epoch-timestamp +epoch-timestamp+)
(defconstant calendar:epoch-instant +epoch-instant+)

(defconstant calendar:zero-duration +zero-duration+)
(defconstant calendar:epsilon-duration +epsilon-duration+)

(defconstant calendar:utc-zone +utc-zone+)
