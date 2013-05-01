
import std.stdio;

void main() 
{
	string[] outBuf;
	auto f = File("testData.txt", "r");
	char[] buf;

	writeln("\n**** RAW OUTPUT *****");

	while (f.readln(buf))
	{
		write(buf);
		outBuf ~= buf.idup;
	}

	writeln("\n**** BUFFERED OUTPUT *****");

	foreach (line; outBuf)
	{
		write(line);
	}
}