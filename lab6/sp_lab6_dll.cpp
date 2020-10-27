#include "sp_lab6_dll.h"
#include "pch.h"

extern "C" __declspec(dllexport) int numOfWords(char *text)
{
	int count = 0;
	if (text[0] == 'a' || text[0] == 'e' || text[0] == 'y' || text[0] == 'u' || text[0] == 'i' || text[0] == 'o' || 
		text[0] == 'A' || text[0] == 'E' || text[0] == 'Y' || text[0] == 'U' || text[0] == 'I' || text[0] == 'O')
	{
		++count;
	}
	while (*text != '\0')
	{
		if (*text == ' ' || *text == '\n' || *text == '\t')
		{
			++text;
			if (*text == 'a' || *text == 'e' || *text == 'y' || *text == 'u' || *text == 'i' || *text == 'o' ||
				*text == 'A' || *text == 'E' || *text == 'Y' || *text == 'U' || *text == 'I' || *text == 'O')
			{
				++count;
			}
		}

		++text;
	}

	return count;
}