// http://stackoverflow.com/questions/8129185/how-do-i-get-the-current-script-or-class-name-in-scala

package utils

trait ProgramInfo {
  val programInfo = try { 
    throw new RuntimeException("x")
  } catch { 
    case e: RuntimeException =>
      val arr = new java.io.CharArrayWriter()
      val buffer = new java.io.PrintWriter(arr)
      e.printStackTrace(buffer)
      val trace = arr.toString 
      val lines = io.Source.fromString(trace)
      val pat = """^.*at.*\.main\(([^:]*)(:.*)?\).*$""".r
      lines.getLines().collectFirst{case pat(n, l) => n}.getOrElse("<none>")
  }
}

object ProgramInfo extends ProgramInfo

// call this within Scala program:
// println(utils.ProgramInfo.programInfo)
// To call this within REPL:
// println(ProgramInfo.programInfo)

object A extends utils.ProgramInfo {
   def main(args: Array[String]) {
     println(programInfo)
   }
}
