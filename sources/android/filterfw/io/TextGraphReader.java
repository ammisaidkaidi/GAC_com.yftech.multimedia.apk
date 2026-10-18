package android.filterfw.io;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterFactory;
import android.filterfw.core.FilterGraph;
import android.filterfw.core.KeyValueMap;
import android.filterfw.core.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes.dex */
public class TextGraphReader extends GraphReader {
    private KeyValueMap mBoundReferences;
    private ArrayList<Command> mCommands = new ArrayList<>();
    private Filter mCurrentFilter;
    private FilterGraph mCurrentGraph;
    private FilterFactory mFactory;
    private KeyValueMap mSettings;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface Command {
        void execute(TextGraphReader textGraphReader) throws GraphIOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ImportPackageCommand implements Command {
        private String mPackageName;

        public ImportPackageCommand(String str) {
            this.mPackageName = str;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mFactory.addPackage(this.mPackageName);
            } catch (IllegalArgumentException e) {
                throw new GraphIOException(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class AddLibraryCommand implements Command {
        private String mLibraryName;

        public AddLibraryCommand(String str) {
            this.mLibraryName = str;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) {
            FilterFactory unused = textGraphReader.mFactory;
            FilterFactory.addFilterLibrary(this.mLibraryName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class AllocateFilterCommand implements Command {
        private String mClassName;
        private String mFilterName;

        public AllocateFilterCommand(String str, String str2) {
            this.mClassName = str;
            this.mFilterName = str2;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mCurrentFilter = textGraphReader.mFactory.createFilterByClassName(this.mClassName, this.mFilterName);
            } catch (IllegalArgumentException e) {
                throw new GraphIOException(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class InitFilterCommand implements Command {
        private KeyValueMap mParams;

        public InitFilterCommand(KeyValueMap keyValueMap) {
            this.mParams = keyValueMap;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) throws GraphIOException {
            try {
                textGraphReader.mCurrentFilter.initWithValueMap(this.mParams);
                textGraphReader.mCurrentGraph.addFilter(TextGraphReader.this.mCurrentFilter);
            } catch (ProtocolException e) {
                throw new GraphIOException(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class ConnectCommand implements Command {
        private String mSourceFilter;
        private String mSourcePort;
        private String mTargetFilter;
        private String mTargetName;

        public ConnectCommand(String str, String str2, String str3, String str4) {
            this.mSourceFilter = str;
            this.mSourcePort = str2;
            this.mTargetFilter = str3;
            this.mTargetName = str4;
        }

        @Override // android.filterfw.io.TextGraphReader.Command
        public void execute(TextGraphReader textGraphReader) {
            textGraphReader.mCurrentGraph.connect(this.mSourceFilter, this.mSourcePort, this.mTargetFilter, this.mTargetName);
        }
    }

    @Override // android.filterfw.io.GraphReader
    public FilterGraph readGraphString(String str) throws GraphIOException {
        FilterGraph filterGraph = new FilterGraph();
        reset();
        this.mCurrentGraph = filterGraph;
        parseString(str);
        applySettings();
        executeCommands();
        reset();
        return filterGraph;
    }

    private void reset() {
        this.mCurrentGraph = null;
        this.mCurrentFilter = null;
        this.mCommands.clear();
        this.mBoundReferences = new KeyValueMap();
        this.mSettings = new KeyValueMap();
        this.mFactory = new FilterFactory();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x005a. Please report as an issue. */
    private void parseString(String str) throws GraphIOException {
        Pattern pattern;
        Pattern pattern2;
        Pattern pattern3;
        String str2;
        PatternScanner patternScanner;
        Pattern pattern4;
        Pattern pattern5;
        Pattern pattern6;
        Pattern pattern7;
        Pattern compile = Pattern.compile("@[a-zA-Z]+");
        Pattern compile2 = Pattern.compile("\\}");
        Pattern compile3 = Pattern.compile("\\{");
        Pattern compile4 = Pattern.compile("(\\s+|//[^\\n]*\\n)+");
        Pattern compile5 = Pattern.compile("[a-zA-Z\\.]+");
        Pattern compile6 = Pattern.compile("[a-zA-Z\\./:]+");
        Pattern compile7 = Pattern.compile("\\[[a-zA-Z0-9\\-_]+\\]");
        Pattern compile8 = Pattern.compile("=>");
        Pattern compile9 = Pattern.compile(";");
        Pattern compile10 = Pattern.compile("[a-zA-Z0-9\\-_]+");
        PatternScanner patternScanner2 = new PatternScanner(str, compile4);
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        char c = 0;
        while (!patternScanner2.atEnd()) {
            switch (c) {
                case 0:
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    String eat = patternScanner.eat(pattern4, "<command>");
                    if (eat.equals("@import")) {
                        c = 1;
                    } else if (eat.equals("@library")) {
                        c = 2;
                    } else if (eat.equals("@filter")) {
                        c = 3;
                    } else if (eat.equals("@connect")) {
                        c = '\b';
                    } else if (eat.equals("@set")) {
                        c = '\r';
                    } else if (eat.equals("@external")) {
                        c = 14;
                    } else {
                        if (!eat.equals("@setting")) {
                            throw new GraphIOException("Unknown command '" + eat + "'!");
                        }
                        c = 15;
                    }
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 1:
                    Pattern pattern8 = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern = pattern8;
                    this.mCommands.add(new ImportPackageCommand(patternScanner.eat(pattern, "<package-name>")));
                    pattern4 = compile;
                    c = 16;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 2:
                    Pattern pattern9 = compile5;
                    Pattern pattern10 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern2 = pattern10;
                    this.mCommands.add(new AddLibraryCommand(patternScanner.eat(pattern2, "<library-name>")));
                    pattern4 = compile;
                    pattern = pattern9;
                    c = 16;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 3:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    patternScanner = patternScanner2;
                    str2 = patternScanner.eat(compile10, "<class-name>");
                    c = 4;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 4:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    this.mCommands.add(new AllocateFilterCommand(str2, patternScanner.eat(compile10, "<filter-name>")));
                    c = 5;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 5:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    patternScanner.eat(compile3, "{");
                    c = 6;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 6:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    this.mCommands.add(new InitFilterCommand(readKeyValueAssignments(patternScanner, compile2)));
                    c = 7;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 7:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    patternScanner.eat(compile2, "}");
                    c = 0;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case '\b':
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    str4 = patternScanner.eat(compile10, "<source-filter-name>");
                    c = '\t';
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case '\t':
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    String eat2 = patternScanner.eat(compile7, "[<source-port-name>]");
                    str5 = eat2.substring(1, eat2.length() - 1);
                    c = '\n';
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case '\n':
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    patternScanner.eat(compile8, "=>");
                    c = 11;
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 11:
                    pattern5 = compile;
                    pattern6 = compile5;
                    pattern7 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    str6 = patternScanner.eat(compile10, "<target-filter-name>");
                    c = '\f';
                    pattern4 = pattern5;
                    pattern = pattern6;
                    pattern2 = pattern7;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case '\f':
                    String eat3 = patternScanner2.eat(compile7, "[<target-port-name>]");
                    pattern3 = compile9;
                    Pattern pattern11 = compile5;
                    str2 = str3;
                    Pattern pattern12 = compile6;
                    patternScanner = patternScanner2;
                    this.mCommands.add(new ConnectCommand(str4, str5, str6, eat3.substring(1, eat3.length() - 1)));
                    pattern4 = compile;
                    pattern = pattern11;
                    pattern2 = pattern12;
                    c = 16;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case '\r':
                    this.mBoundReferences.putAll(readKeyValueAssignments(patternScanner2, compile9));
                    c = 16;
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 14:
                    bindExternal(patternScanner2.eat(compile10, "<external-identifier>"));
                    c = 16;
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 15:
                    this.mSettings.putAll(readKeyValueAssignments(patternScanner2, compile9));
                    c = 16;
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                case 16:
                    patternScanner2.eat(compile9, ";");
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    c = 0;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
                default:
                    pattern = compile5;
                    pattern2 = compile6;
                    pattern3 = compile9;
                    str2 = str3;
                    patternScanner = patternScanner2;
                    pattern4 = compile;
                    compile = pattern4;
                    str3 = str2;
                    patternScanner2 = patternScanner;
                    compile9 = pattern3;
                    compile6 = pattern2;
                    compile5 = pattern;
            }
        }
        if (c != 16 && c != 0) {
            throw new GraphIOException("Unexpected end of input!");
        }
    }

    @Override // android.filterfw.io.GraphReader
    public KeyValueMap readKeyValueAssignments(String str) throws GraphIOException {
        return readKeyValueAssignments(new PatternScanner(str, Pattern.compile("\\s+")), null);
    }

    private KeyValueMap readKeyValueAssignments(PatternScanner patternScanner, Pattern pattern) throws GraphIOException {
        Pattern compile = Pattern.compile("=");
        Pattern compile2 = Pattern.compile(";");
        Pattern compile3 = Pattern.compile("[a-zA-Z]+[a-zA-Z0-9]*");
        Pattern compile4 = Pattern.compile("'[^']*'|\\\"[^\\\"]*\\\"");
        Pattern compile5 = Pattern.compile("[0-9]+");
        Pattern compile6 = Pattern.compile("[0-9]*\\.[0-9]+f?");
        Pattern compile7 = Pattern.compile("\\$[a-zA-Z]+[a-zA-Z0-9]");
        Pattern compile8 = Pattern.compile("true|false");
        KeyValueMap keyValueMap = new KeyValueMap();
        char c = 0;
        String str = null;
        while (!patternScanner.atEnd() && (pattern == null || !patternScanner.peek(pattern))) {
            switch (c) {
                case 0:
                    str = patternScanner.eat(compile3, "<identifier>");
                    c = 1;
                    break;
                case 1:
                    patternScanner.eat(compile, "=");
                    c = 2;
                    break;
                case 2:
                    String tryEat = patternScanner.tryEat(compile4);
                    if (tryEat != null) {
                        keyValueMap.put(str, tryEat.substring(1, tryEat.length() - 1));
                    } else {
                        String tryEat2 = patternScanner.tryEat(compile7);
                        if (tryEat2 != null) {
                            String substring = tryEat2.substring(1, tryEat2.length());
                            Object obj = this.mBoundReferences != null ? this.mBoundReferences.get(substring) : null;
                            if (obj == null) {
                                throw new GraphIOException("Unknown object reference to '" + substring + "'!");
                            }
                            keyValueMap.put(str, obj);
                        } else {
                            String tryEat3 = patternScanner.tryEat(compile8);
                            if (tryEat3 != null) {
                                keyValueMap.put(str, Boolean.valueOf(Boolean.parseBoolean(tryEat3)));
                            } else {
                                String tryEat4 = patternScanner.tryEat(compile6);
                                if (tryEat4 != null) {
                                    keyValueMap.put(str, Float.valueOf(Float.parseFloat(tryEat4)));
                                } else {
                                    String tryEat5 = patternScanner.tryEat(compile5);
                                    if (tryEat5 != null) {
                                        keyValueMap.put(str, Integer.valueOf(Integer.parseInt(tryEat5)));
                                    } else {
                                        throw new GraphIOException(patternScanner.unexpectedTokenMessage("<value>"));
                                    }
                                }
                            }
                        }
                    }
                    c = 3;
                    break;
                case 3:
                    patternScanner.eat(compile2, ";");
                    c = 0;
                    break;
            }
        }
        if (c == 0 || c == 3) {
            return keyValueMap;
        }
        throw new GraphIOException("Unexpected end of assignments on line " + patternScanner.lineNo() + "!");
    }

    private void bindExternal(String str) throws GraphIOException {
        if (this.mReferences.containsKey(str)) {
            this.mBoundReferences.put(str, this.mReferences.get(str));
        } else {
            throw new GraphIOException("Unknown external variable '" + str + "'! You must add a reference to this external in the host program using addReference(...)!");
        }
    }

    private void checkReferences() throws GraphIOException {
        for (String str : this.mReferences.keySet()) {
            if (!this.mBoundReferences.containsKey(str)) {
                throw new GraphIOException("Host program specifies reference to '" + str + "', which is not declared @external in graph file!");
            }
        }
    }

    private void applySettings() throws GraphIOException {
        for (String str : this.mSettings.keySet()) {
            Object obj = this.mSettings.get(str);
            if (str.equals("autoBranch")) {
                expectSettingClass(str, obj, String.class);
                if (obj.equals("synced")) {
                    this.mCurrentGraph.setAutoBranchMode(1);
                } else if (obj.equals("unsynced")) {
                    this.mCurrentGraph.setAutoBranchMode(2);
                } else if (obj.equals("off")) {
                    this.mCurrentGraph.setAutoBranchMode(0);
                } else {
                    throw new GraphIOException("Unknown autobranch setting: " + obj + "!");
                }
            } else if (str.equals("discardUnconnectedOutputs")) {
                expectSettingClass(str, obj, Boolean.class);
                this.mCurrentGraph.setDiscardUnconnectedOutputs(((Boolean) obj).booleanValue());
            } else {
                throw new GraphIOException("Unknown @setting '" + str + "'!");
            }
        }
    }

    private void expectSettingClass(String str, Object obj, Class cls) throws GraphIOException {
        if (obj.getClass() == cls) {
            return;
        }
        throw new GraphIOException("Setting '" + str + "' must have a value of type " + cls.getSimpleName() + ", but found a value of type " + obj.getClass().getSimpleName() + "!");
    }

    private void executeCommands() throws GraphIOException {
        Iterator<Command> it = this.mCommands.iterator();
        while (it.hasNext()) {
            it.next().execute(this);
        }
    }
}
