package android.database.sqlite;

import android.app.SearchManager;
import android.app.slice.Slice;
import android.net.wifi.WifiEnterpriseConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes.dex */
public class SQLiteTokenizer {
    public static final int OPTION_NONE = 0;
    public static final int OPTION_TOKEN_ONLY = 1;

    private static boolean isAlpha(char c) {
        return ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || c == '_';
    }

    private static boolean isNum(char c) {
        return '0' <= c && c <= '9';
    }

    private static boolean isAlNum(char c) {
        return isAlpha(c) || isNum(c);
    }

    private static boolean isAnyOf(char c, String str) {
        return str.indexOf(c) >= 0;
    }

    private static IllegalArgumentException genException(String str, String str2) {
        throw new IllegalArgumentException(str + " in '" + str2 + "'");
    }

    private static char peek(String str, int i) {
        if (i < str.length()) {
            return str.charAt(i);
        }
        return (char) 0;
    }

    public static List<String> tokenize(String str, int i) {
        final ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        tokenize(str, i, new Consumer() { // from class: android.database.sqlite.-$$Lambda$I1A8dniBuRdoMGKE4fgVMPvl9YM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((String) obj);
            }
        });
        return arrayList;
    }

    public static void tokenize(String str, int i, Consumer<String> consumer) {
        if (str == null) {
            return;
        }
        int i2 = 0;
        int length = str.length();
        while (i2 < length) {
            char peek = peek(str, i2);
            if (isAlpha(peek)) {
                int i3 = i2 + 1;
                while (isAlNum(peek(str, i3))) {
                    i3++;
                }
                consumer.accept(str.substring(i2, i3));
                i2 = i3;
            } else if (isAnyOf(peek, "'\"`")) {
                int i4 = i2 + 1;
                int i5 = i4;
                while (true) {
                    int indexOf = str.indexOf(peek, i5);
                    if (indexOf < 0) {
                        throw genException("Unterminated quote", str);
                    }
                    int i6 = indexOf + 1;
                    if (peek(str, i6) != peek) {
                        if (peek != '\'') {
                            String substring = str.substring(i4, indexOf);
                            if (substring.indexOf(peek) >= 0) {
                                substring = substring.replaceAll(String.valueOf(peek) + peek, String.valueOf(peek));
                            }
                            consumer.accept(substring);
                        } else {
                            i &= 1;
                            if (i != 0) {
                                throw genException("Non-token detected", str);
                            }
                        }
                        i2 = i6;
                    } else {
                        i5 = indexOf + 2;
                    }
                }
            } else if (peek == '[') {
                int i7 = i2 + 1;
                int indexOf2 = str.indexOf(93, i7);
                if (indexOf2 < 0) {
                    throw genException("Unterminated quote", str);
                }
                consumer.accept(str.substring(i7, indexOf2));
                i2 = indexOf2 + 1;
            } else {
                i &= 1;
                if (i != 0) {
                    throw genException("Non-token detected", str);
                }
                if (peek == '-' && peek(str, i2 + 1) == '-') {
                    int indexOf3 = str.indexOf(10, i2 + 2);
                    if (indexOf3 < 0) {
                        throw genException("Unterminated comment", str);
                    }
                    i2 = indexOf3 + 1;
                } else if (peek == '/' && peek(str, i2 + 1) == '*') {
                    int indexOf4 = str.indexOf("*/", i2 + 2);
                    if (indexOf4 < 0) {
                        throw genException("Unterminated comment", str);
                    }
                    i2 = indexOf4 + 2;
                } else {
                    if (peek == ';') {
                        throw genException("Semicolon is not allowed", str);
                    }
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean isKeyword(String str) {
        char c;
        String upperCase = str.toUpperCase(Locale.US);
        switch (upperCase.hashCode()) {
            case -2137067054:
                if (upperCase.equals("IGNORE")) {
                    c = '?';
                    break;
                }
                c = 65535;
                break;
            case -2130463047:
                if (upperCase.equals("INSERT")) {
                    c = 'F';
                    break;
                }
                c = 65535;
                break;
            case -2125979215:
                if (upperCase.equals("ISNULL")) {
                    c = 'K';
                    break;
                }
                c = 65535;
                break;
            case -2032180703:
                if (upperCase.equals("DEFAULT")) {
                    c = '!';
                    break;
                }
                c = 65535;
                break;
            case -1986874255:
                if (upperCase.equals("NOCASE")) {
                    c = 'T';
                    break;
                }
                c = 65535;
                break;
            case -1966450541:
                if (upperCase.equals("OFFSET")) {
                    c = 'Z';
                    break;
                }
                c = 65535;
                break;
            case -1953474717:
                if (upperCase.equals("OTHERS")) {
                    c = '^';
                    break;
                }
                c = 65535;
                break;
            case -1926899396:
                if (upperCase.equals("PRAGMA")) {
                    c = 'c';
                    break;
                }
                c = 65535;
                break;
            case -1881469687:
                if (upperCase.equals("REGEXP")) {
                    c = 'k';
                    break;
                }
                c = 65535;
                break;
            case -1881265346:
                if (upperCase.equals("RENAME")) {
                    c = 'n';
                    break;
                }
                c = 65535;
                break;
            case -1852692228:
                if (upperCase.equals("SELECT")) {
                    c = 'w';
                    break;
                }
                c = 65535;
                break;
            case -1848073207:
                if (upperCase.equals("NATURAL")) {
                    c = 'R';
                    break;
                }
                c = 65535;
                break;
            case -1787199535:
                if (upperCase.equals("UNIQUE")) {
                    c = 131;
                    break;
                }
                c = 65535;
                break;
            case -1785516855:
                if (upperCase.equals("UPDATE")) {
                    c = 132;
                    break;
                }
                c = 65535;
                break;
            case -1770751051:
                if (upperCase.equals("VACUUM")) {
                    c = 134;
                    break;
                }
                c = 65535;
                break;
            case -1770483422:
                if (upperCase.equals("VALUES")) {
                    c = 135;
                    break;
                }
                c = 65535;
                break;
            case -1757367375:
                if (upperCase.equals("INITIALLY")) {
                    c = 'D';
                    break;
                }
                c = 65535;
                break;
            case -1734422544:
                if (upperCase.equals("WINDOW")) {
                    c = 140;
                    break;
                }
                c = 65535;
                break;
            case -1722875525:
                if (upperCase.equals("DATABASE")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case -1633692463:
                if (upperCase.equals("INDEXED")) {
                    c = 'C';
                    break;
                }
                c = 65535;
                break;
            case -1619411166:
                if (upperCase.equals("INSTEAD")) {
                    c = 'G';
                    break;
                }
                c = 65535;
                break;
            case -1447660627:
                if (upperCase.equals("NOTHING")) {
                    c = 'V';
                    break;
                }
                c = 65535;
                break;
            case -1447470406:
                if (upperCase.equals("NOTNULL")) {
                    c = 'W';
                    break;
                }
                c = 65535;
                break;
            case -1322009984:
                if (upperCase.equals("AUTOINCREMENT")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1308685805:
                if (upperCase.equals("SAVEPOINT")) {
                    c = 'v';
                    break;
                }
                c = 65535;
                break;
            case -1005357825:
                if (upperCase.equals("INTERSECT")) {
                    c = 'H';
                    break;
                }
                c = 65535;
                break;
            case -742456719:
                if (upperCase.equals("FOLLOWING")) {
                    c = '5';
                    break;
                }
                c = 65535;
                break;
            case -603166278:
                if (upperCase.equals("EXCLUDE")) {
                    c = '/';
                    break;
                }
                c = 65535;
                break;
            case -591179561:
                if (upperCase.equals("EXPLAIN")) {
                    c = '2';
                    break;
                }
                c = 65535;
                break;
            case -479705388:
                if (upperCase.equals("CURRENT_DATE")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case -479221261:
                if (upperCase.equals("CURRENT_TIME")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case -383989871:
                if (upperCase.equals("IMMEDIATE")) {
                    c = '@';
                    break;
                }
                c = 65535;
                break;
            case -342592494:
                if (upperCase.equals("RECURSIVE")) {
                    c = 'i';
                    break;
                }
                c = 65535;
                break;
            case -341909096:
                if (upperCase.equals("TRIGGER")) {
                    c = 128;
                    break;
                }
                c = 65535;
                break;
            case -262905456:
                if (upperCase.equals("CURRENT_TIMESTAMP")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case -146347732:
                if (upperCase.equals("ANALYZE")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -760130:
                if (upperCase.equals("TRANSACTION")) {
                    c = 127;
                    break;
                }
                c = 65535;
                break;
            case 2098:
                if (upperCase.equals("AS")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 2135:
                if (upperCase.equals("BY")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 2187:
                if (upperCase.equals("DO")) {
                    c = '(';
                    break;
                }
                c = 65535;
                break;
            case 2333:
                if (upperCase.equals("IF")) {
                    c = '>';
                    break;
                }
                c = 65535;
                break;
            case 2341:
                if (upperCase.equals("IN")) {
                    c = 'A';
                    break;
                }
                c = 65535;
                break;
            case 2346:
                if (upperCase.equals("IS")) {
                    c = 'J';
                    break;
                }
                c = 65535;
                break;
            case 2497:
                if (upperCase.equals("NO")) {
                    c = 'S';
                    break;
                }
                c = 65535;
                break;
            case 2519:
                if (upperCase.equals("OF")) {
                    c = 'Y';
                    break;
                }
                c = 65535;
                break;
            case 2527:
                if (upperCase.equals("ON")) {
                    c = '[';
                    break;
                }
                c = 65535;
                break;
            case 2531:
                if (upperCase.equals("OR")) {
                    c = '\\';
                    break;
                }
                c = 65535;
                break;
            case 2683:
                if (upperCase.equals("TO")) {
                    c = '~';
                    break;
                }
                c = 65535;
                break;
            case 64641:
                if (upperCase.equals("ADD")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 64897:
                if (upperCase.equals("ALL")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 64951:
                if (upperCase.equals("AND")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 65105:
                if (upperCase.equals("ASC")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 68795:
                if (upperCase.equals("END")) {
                    c = ',';
                    break;
                }
                c = 65535;
                break;
            case 69801:
                if (upperCase.equals("FOR")) {
                    c = '6';
                    break;
                }
                c = 65535;
                break;
            case 74303:
                if (upperCase.equals("KEY")) {
                    c = 'M';
                    break;
                }
                c = 65535;
                break;
            case 77491:
                if (upperCase.equals("NOT")) {
                    c = 'U';
                    break;
                }
                c = 65535;
                break;
            case 81338:
                if (upperCase.equals("ROW")) {
                    c = SearchManager.MENU_KEY;
                    break;
                }
                c = 65535;
                break;
            case 81986:
                if (upperCase.equals("SET")) {
                    c = 'x';
                    break;
                }
                c = 65535;
                break;
            case 2061104:
                if (upperCase.equals("CASE")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 2061119:
                if (upperCase.equals("CAST")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2094737:
                if (upperCase.equals("DESC")) {
                    c = '%';
                    break;
                }
                c = 65535;
                break;
            case 2107119:
                if (upperCase.equals("DROP")) {
                    c = ')';
                    break;
                }
                c = 65535;
                break;
            case 2120193:
                if (upperCase.equals("EACH")) {
                    c = '*';
                    break;
                }
                c = 65535;
                break;
            case 2131257:
                if (upperCase.equals("ELSE")) {
                    c = '+';
                    break;
                }
                c = 65535;
                break;
            case 2150174:
                if (upperCase.equals("FAIL")) {
                    c = '3';
                    break;
                }
                c = 65535;
                break;
            case 2166698:
                if (upperCase.equals("FROM")) {
                    c = '8';
                    break;
                }
                c = 65535;
                break;
            case 2169487:
                if (upperCase.equals("FULL")) {
                    c = '9';
                    break;
                }
                c = 65535;
                break;
            case 2190712:
                if (upperCase.equals("GLOB")) {
                    c = ':';
                    break;
                }
                c = 65535;
                break;
            case 2252384:
                if (upperCase.equals("INTO")) {
                    c = 'I';
                    break;
                }
                c = 65535;
                break;
            case 2282794:
                if (upperCase.equals("JOIN")) {
                    c = 'L';
                    break;
                }
                c = 65535;
                break;
            case 2332679:
                if (upperCase.equals("LEFT")) {
                    c = 'N';
                    break;
                }
                c = 65535;
                break;
            case 2336663:
                if (upperCase.equals("LIKE")) {
                    c = 'O';
                    break;
                }
                c = 65535;
                break;
            case 2407815:
                if (upperCase.equals(WifiEnterpriseConfig.EMPTY_VALUE)) {
                    c = 'X';
                    break;
                }
                c = 65535;
                break;
            case 2438356:
                if (upperCase.equals("OVER")) {
                    c = '`';
                    break;
                }
                c = 65535;
                break;
            case 2458409:
                if (upperCase.equals("PLAN")) {
                    c = 'b';
                    break;
                }
                c = 65535;
                break;
            case 2521561:
                if (upperCase.equals("ROWS")) {
                    c = 't';
                    break;
                }
                c = 65535;
                break;
            case 2571220:
                if (upperCase.equals("TEMP")) {
                    c = 'z';
                    break;
                }
                c = 65535;
                break;
            case 2573853:
                if (upperCase.equals("THEN")) {
                    c = '|';
                    break;
                }
                c = 65535;
                break;
            case 2574819:
                if (upperCase.equals("TIES")) {
                    c = '}';
                    break;
                }
                c = 65535;
                break;
            case 2634405:
                if (upperCase.equals("VIEW")) {
                    c = 136;
                    break;
                }
                c = 65535;
                break;
            case 2663226:
                if (upperCase.equals("WHEN")) {
                    c = 138;
                    break;
                }
                c = 65535;
                break;
            case 2664646:
                if (upperCase.equals("WITH")) {
                    c = 141;
                    break;
                }
                c = 65535;
                break;
            case 40307892:
                if (upperCase.equals("FOREIGN")) {
                    c = '7';
                    break;
                }
                c = 65535;
                break;
            case 62073616:
                if (upperCase.equals("ABORT")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 62197180:
                if (upperCase.equals("AFTER")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 62375926:
                if (upperCase.equals("ALTER")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 63078537:
                if (upperCase.equals("BEGIN")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 64089320:
                if (upperCase.equals("CHECK")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 64397344:
                if (upperCase.equals("CROSS")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 68091487:
                if (upperCase.equals("GROUP")) {
                    c = ';';
                    break;
                }
                c = 65535;
                break;
            case 69808306:
                if (upperCase.equals("INDEX")) {
                    c = 'B';
                    break;
                }
                c = 65535;
                break;
            case 69817910:
                if (upperCase.equals("INNER")) {
                    c = 'E';
                    break;
                }
                c = 65535;
                break;
            case 72438683:
                if (upperCase.equals("LIMIT")) {
                    c = 'P';
                    break;
                }
                c = 65535;
                break;
            case 73130405:
                if (upperCase.equals("MATCH")) {
                    c = 'Q';
                    break;
                }
                c = 65535;
                break;
            case 75468590:
                if (upperCase.equals("ORDER")) {
                    c = ']';
                    break;
                }
                c = 65535;
                break;
            case 75573339:
                if (upperCase.equals("OUTER")) {
                    c = '_';
                    break;
                }
                c = 65535;
                break;
            case 77406376:
                if (upperCase.equals("QUERY")) {
                    c = 'f';
                    break;
                }
                c = 65535;
                break;
            case 77737932:
                if (upperCase.equals("RAISE")) {
                    c = 'g';
                    break;
                }
                c = 65535;
                break;
            case 77742365:
                if (upperCase.equals("RANGE")) {
                    c = 'h';
                    break;
                }
                c = 65535;
                break;
            case 77974012:
                if (upperCase.equals("RIGHT")) {
                    c = 'q';
                    break;
                }
                c = 65535;
                break;
            case 78312308:
                if (upperCase.equals("RTRIM")) {
                    c = 'u';
                    break;
                }
                c = 65535;
                break;
            case 79578030:
                if (upperCase.equals("TABLE")) {
                    c = 'y';
                    break;
                }
                c = 65535;
                break;
            case 80895663:
                if (upperCase.equals("UNION")) {
                    c = 130;
                    break;
                }
                c = 65535;
                break;
            case 81044580:
                if (upperCase.equals("USING")) {
                    c = 133;
                    break;
                }
                c = 65535;
                break;
            case 82560199:
                if (upperCase.equals("WHERE")) {
                    c = 139;
                    break;
                }
                c = 65535;
                break;
            case 178245246:
                if (upperCase.equals("EXCLUSIVE")) {
                    c = '0';
                    break;
                }
                c = 65535;
                break;
            case 202578898:
                if (upperCase.equals("CONFLICT")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 273740228:
                if (upperCase.equals("UNBOUNDED")) {
                    c = 129;
                    break;
                }
                c = 65535;
                break;
            case 294715869:
                if (upperCase.equals("CONSTRAINT")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 337882266:
                if (upperCase.equals("DEFERRABLE")) {
                    c = '\"';
                    break;
                }
                c = 65535;
                break;
            case 403216866:
                if (upperCase.equals("PRIMARY")) {
                    c = 'e';
                    break;
                }
                c = 65535;
                break;
            case 446081724:
                if (upperCase.equals("RESTRICT")) {
                    c = 'p';
                    break;
                }
                c = 65535;
                break;
            case 476614193:
                if (upperCase.equals("TEMPORARY")) {
                    c = '{';
                    break;
                }
                c = 65535;
                break;
            case 501348328:
                if (upperCase.equals("BETWEEN")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 522907364:
                if (upperCase.equals("ROLLBACK")) {
                    c = 'r';
                    break;
                }
                c = 65535;
                break;
            case 986784458:
                if (upperCase.equals("PARTITION")) {
                    c = 'a';
                    break;
                }
                c = 65535;
                break;
            case 1071324924:
                if (upperCase.equals("DISTINCT")) {
                    c = '\'';
                    break;
                }
                c = 65535;
                break;
            case 1184148203:
                if (upperCase.equals("VIRTUAL")) {
                    c = 137;
                    break;
                }
                c = 65535;
                break;
            case 1272812180:
                if (upperCase.equals("CASCADE")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 1406276771:
                if (upperCase.equals("PRECEDING")) {
                    c = 'd';
                    break;
                }
                c = 65535;
                break;
            case 1430517727:
                if (upperCase.equals("DEFERRED")) {
                    c = '#';
                    break;
                }
                c = 65535;
                break;
            case 1667424262:
                if (upperCase.equals("COLLATE")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1806077535:
                if (upperCase.equals("REINDEX")) {
                    c = 'l';
                    break;
                }
                c = 65535;
                break;
            case 1808577511:
                if (upperCase.equals("RELEASE")) {
                    c = 'm';
                    break;
                }
                c = 65535;
                break;
            case 1812479636:
                if (upperCase.equals("REPLACE")) {
                    c = 'o';
                    break;
                }
                c = 65535;
                break;
            case 1844922713:
                if (upperCase.equals("CURRENT")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 1870042760:
                if (upperCase.equals("REFERENCES")) {
                    c = 'j';
                    break;
                }
                c = 65535;
                break;
            case 1925345846:
                if (upperCase.equals("ACTION")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1941037637:
                if (upperCase.equals("ATTACH")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 1955410815:
                if (upperCase.equals("BEFORE")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1959329793:
                if (upperCase.equals("BINARY")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 1993459542:
                if (upperCase.equals("COLUMN")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 1993481527:
                if (upperCase.equals("COMMIT")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 1996002556:
                if (upperCase.equals("CREATE")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 2012838315:
                if (upperCase.equals("DELETE")) {
                    c = '$';
                    break;
                }
                c = 65535;
                break;
            case 2013072275:
                if (upperCase.equals("DETACH")) {
                    c = '&';
                    break;
                }
                c = 65535;
                break;
            case 2054124673:
                if (upperCase.equals("ESCAPE")) {
                    c = '-';
                    break;
                }
                c = 65535;
                break;
            case 2058746137:
                if (upperCase.equals("EXCEPT")) {
                    c = '.';
                    break;
                }
                c = 65535;
                break;
            case 2058938460:
                if (upperCase.equals("EXISTS")) {
                    c = '1';
                    break;
                }
                c = 65535;
                break;
            case 2073136296:
                if (upperCase.equals("WITHOUT")) {
                    c = 142;
                    break;
                }
                c = 65535;
                break;
            case 2073804664:
                if (upperCase.equals("FILTER")) {
                    c = '4';
                    break;
                }
                c = 65535;
                break;
            case 2110836180:
                if (upperCase.equals("GROUPS")) {
                    c = '<';
                    break;
                }
                c = 65535;
                break;
            case 2123962405:
                if (upperCase.equals("HAVING")) {
                    c = '=';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
            case '!':
            case '\"':
            case '#':
            case '$':
            case '%':
            case '&':
            case '\'':
            case '(':
            case ')':
            case '*':
            case '+':
            case ',':
            case '-':
            case '.':
            case '/':
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
            case ':':
            case ';':
            case '<':
            case '=':
            case '>':
            case '?':
            case '@':
            case 'A':
            case 'B':
            case 'C':
            case 'D':
            case 'E':
            case 'F':
            case 'G':
            case 'H':
            case 'I':
            case 'J':
            case 'K':
            case 'L':
            case 'M':
            case 'N':
            case 'O':
            case 'P':
            case 'Q':
            case 'R':
            case 'S':
            case 'T':
            case 'U':
            case 'V':
            case 'W':
            case 'X':
            case 'Y':
            case 'Z':
            case '[':
            case '\\':
            case ']':
            case '^':
            case '_':
            case '`':
            case 'a':
            case 'b':
            case 'c':
            case 'd':
            case 'e':
            case 'f':
            case 'g':
            case 'h':
            case 'i':
            case 'j':
            case 'k':
            case 'l':
            case 'm':
            case 'n':
            case 'o':
            case 'p':
            case 'q':
            case 'r':
            case 's':
            case 't':
            case 'u':
            case 'v':
            case 'w':
            case 'x':
            case 'y':
            case 'z':
            case '{':
            case '|':
            case '}':
            case '~':
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean isFunction(String str) {
        char c;
        String lowerCase = str.toLowerCase(Locale.US);
        switch (lowerCase.hashCode()) {
            case -1191314396:
                if (lowerCase.equals("ifnull")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1106363674:
                if (lowerCase.equals("length")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1102761116:
                if (lowerCase.equals("likely")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1034384156:
                if (lowerCase.equals("nullif")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -946884697:
                if (lowerCase.equals("coalesce")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -938285885:
                if (lowerCase.equals("random")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case -891529231:
                if (lowerCase.equals("substr")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case -858802543:
                if (lowerCase.equals("typeof")) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case -660406060:
                if (lowerCase.equals("group_concat")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -414949776:
                if (lowerCase.equals("likelihood")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -287016227:
                if (lowerCase.equals("unicode")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case -216257731:
                if (lowerCase.equals("unlikely")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case 96370:
                if (lowerCase.equals("abs")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 96978:
                if (lowerCase.equals("avg")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 103195:
                if (lowerCase.equals("hex")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 107876:
                if (lowerCase.equals(Slice.SUBTYPE_MAX)) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 108114:
                if (lowerCase.equals("min")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 114251:
                if (lowerCase.equals("sum")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 3052374:
                if (lowerCase.equals("char")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 3175800:
                if (lowerCase.equals("glob")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 3321751:
                if (lowerCase.equals("like")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 3568674:
                if (lowerCase.equals("trim")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 94851343:
                if (lowerCase.equals("count")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 100360940:
                if (lowerCase.equals("instr")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 103164673:
                if (lowerCase.equals("lower")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 103308942:
                if (lowerCase.equals("ltrim")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 108704142:
                if (lowerCase.equals("round")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 108850068:
                if (lowerCase.equals("rtrim")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 110549828:
                if (lowerCase.equals("total")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 111499426:
                if (lowerCase.equals("upper")) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            case 116062944:
                if (lowerCase.equals("randomblob")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 687315525:
                if (lowerCase.equals("zeroblob")) {
                    c = ' ';
                    break;
                }
                c = 65535;
                break;
            case 1094496948:
                if (lowerCase.equals("replace")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case ' ':
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean isType(String str) {
        char c;
        String upperCase = str.toUpperCase(Locale.US);
        switch (upperCase.hashCode()) {
            case -2034720975:
                if (upperCase.equals("DECIMAL")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case -1718637701:
                if (upperCase.equals("DATETIME")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -1618932450:
                if (upperCase.equals("INTEGER")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1282431251:
                if (upperCase.equals("NUMERIC")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case -594415409:
                if (upperCase.equals("TINYINT")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -545151281:
                if (upperCase.equals("NVARCHAR")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 72655:
                if (upperCase.equals("INT")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2041757:
                if (upperCase.equals("BLOB")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2071548:
                if (upperCase.equals("CLOB")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2090926:
                if (upperCase.equals("DATE")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2252355:
                if (upperCase.equals("INT2")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 2252361:
                if (upperCase.equals("INT8")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 2511262:
                if (upperCase.equals("REAL")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (upperCase.equals("TEXT")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 55823113:
                if (upperCase.equals("CHARACTER")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 66988604:
                if (upperCase.equals("FLOAT")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 74101924:
                if (upperCase.equals("NCHAR")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 176095624:
                if (upperCase.equals("SMALLINT")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 651290682:
                if (upperCase.equals("MEDIUMINT")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 782694408:
                if (upperCase.equals("BOOLEAN")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 954596061:
                if (upperCase.equals("VARCHAR")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1959128815:
                if (upperCase.equals("BIGINT")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2022338513:
                if (upperCase.equals("DOUBLE")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return true;
            default:
                return false;
        }
    }
}
