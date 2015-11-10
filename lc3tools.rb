class Lc3tools < Formula
  desc "LC-3 is a low-level educational programming language"
  homepage "http://highered.mheducation.com/sites/0072467509/student_view0/index.html"
  url "http://highered.mheducation.com/sites/dl/free/0072467509/104652/lc3tools_v12.zip"
  sha256 "3d3334a257bca4788999469a8633f0701418f3f8555604210036786d2001b772"

  def install
    system "./configure", "--installdir", prefix
    system "make", "install"

    bin.install "lc3as"
    bin.install "lc3convert"
    bin.install "lc3sim"
    bin.install "lc3sim-tk"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.

    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test lc3tools_v`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
