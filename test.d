
import std.stdio;

auto testData = ["\r\n", "// This is a long comment"];

void main() 
{
	char[][] outBuf;
	auto f = File("testData.txt", "r");
	char[] buf;

	while (f.readln(buf))
	{
		outBuf ~= buf;
	}

	writeln(outBuf);
}