package com.facebook.common.file;

import java.io.File;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface FileTreeVisitor {
    void postVisitDirectory(File file);

    void preVisitDirectory(File file);

    void visitFile(File file);
}
