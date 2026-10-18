package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.ArrayRow;
import androidx.constraintlayout.solver.LinearSystem;
import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class Chain {
    private static final boolean DEBUG = false;

    Chain() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i) {
        int i2;
        int i3;
        ChainHead[] chainHeadArr;
        if (i == 0) {
            int i4 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i3 = i4;
            i2 = 0;
        } else {
            i2 = 2;
            i3 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
        }
        for (int i5 = 0; i5 < i3; i5++) {
            ChainHead chainHead = chainHeadArr[i5];
            chainHead.define();
            if (constraintWidgetContainer.optimizeFor(4)) {
                if (!Optimizer.applyChainOptimized(constraintWidgetContainer, linearSystem, i, i2, chainHead)) {
                    applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
                }
            } else {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i, i2, chainHead);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (r2.mHorizontalChainStyle == 2) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x0039, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x0053, code lost:
    
        if (r2.mVerticalChainStyle == 2) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0509 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x054b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0520  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i, int i2, ChainHead chainHead) {
        boolean z;
        boolean z2;
        boolean z3;
        ArrayList<ConstraintWidget> arrayList;
        ConstraintWidget constraintWidget;
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        LinearSystem linearSystem2;
        LinearSystem linearSystem3;
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintWidget constraintWidget5;
        int i3;
        ConstraintWidget constraintWidget6;
        ConstraintAnchor constraintAnchor5;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor6;
        int i4;
        ConstraintWidget constraintWidget7;
        ConstraintWidget constraintWidget8;
        ConstraintWidget constraintWidget9;
        int i5;
        SolverVariable solverVariable5;
        float f;
        int size;
        int i6;
        ArrayList<ConstraintWidget> arrayList2;
        ConstraintWidget constraintWidget10;
        boolean z4;
        int i7;
        boolean z5;
        ConstraintWidget constraintWidget11;
        int i8;
        ConstraintWidget constraintWidget12 = chainHead.mFirst;
        ConstraintWidget constraintWidget13 = chainHead.mLast;
        ConstraintWidget constraintWidget14 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget15 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget16 = chainHead.mHead;
        float f2 = chainHead.mTotalWeight;
        ConstraintWidget constraintWidget17 = chainHead.mFirstMatchConstraintWidget;
        ConstraintWidget constraintWidget18 = chainHead.mLastMatchConstraintWidget;
        boolean z6 = constraintWidgetContainer.mListDimensionBehaviors[i] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i == 0) {
            z = constraintWidget16.mHorizontalChainStyle == 0;
            z2 = constraintWidget16.mHorizontalChainStyle == 1;
        } else {
            z = constraintWidget16.mVerticalChainStyle == 0;
            z2 = constraintWidget16.mVerticalChainStyle == 1;
        }
        boolean z7 = z3;
        boolean z8 = z2;
        boolean z9 = z;
        ConstraintWidget constraintWidget19 = constraintWidget12;
        boolean z10 = false;
        while (true) {
            ConstraintWidget constraintWidget20 = null;
            if (z10) {
                break;
            }
            ConstraintAnchor constraintAnchor7 = constraintWidget19.mListAnchors[i2];
            int i9 = (z6 || z7) ? 1 : 4;
            int margin = constraintAnchor7.getMargin();
            float f3 = f2;
            if (constraintAnchor7.mTarget != null && constraintWidget19 != constraintWidget12) {
                margin += constraintAnchor7.mTarget.getMargin();
            }
            int i10 = margin;
            if (z7 && constraintWidget19 != constraintWidget12 && constraintWidget19 != constraintWidget14) {
                constraintWidget10 = constraintWidget16;
                z4 = z10;
                i7 = 6;
            } else if (z9 && z6) {
                constraintWidget10 = constraintWidget16;
                z4 = z10;
                i7 = 4;
            } else {
                constraintWidget10 = constraintWidget16;
                z4 = z10;
                i7 = i9;
            }
            if (constraintAnchor7.mTarget != null) {
                if (constraintWidget19 == constraintWidget14) {
                    constraintWidget11 = constraintWidget12;
                    z5 = z7;
                    linearSystem.addGreaterThan(constraintAnchor7.mSolverVariable, constraintAnchor7.mTarget.mSolverVariable, i10, 5);
                } else {
                    z5 = z7;
                    constraintWidget11 = constraintWidget12;
                    linearSystem.addGreaterThan(constraintAnchor7.mSolverVariable, constraintAnchor7.mTarget.mSolverVariable, i10, 6);
                }
                linearSystem.addEquality(constraintAnchor7.mSolverVariable, constraintAnchor7.mTarget.mSolverVariable, i10, i7);
            } else {
                z5 = z7;
                constraintWidget11 = constraintWidget12;
            }
            if (z6) {
                if (constraintWidget19.getVisibility() == 8 || constraintWidget19.mListDimensionBehaviors[i] != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    i8 = 0;
                } else {
                    i8 = 0;
                    linearSystem.addGreaterThan(constraintWidget19.mListAnchors[i2 + 1].mSolverVariable, constraintWidget19.mListAnchors[i2].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(constraintWidget19.mListAnchors[i2].mSolverVariable, constraintWidgetContainer.mListAnchors[i2].mSolverVariable, i8, 6);
            }
            ConstraintAnchor constraintAnchor8 = constraintWidget19.mListAnchors[i2 + 1].mTarget;
            if (constraintAnchor8 != null) {
                ConstraintWidget constraintWidget21 = constraintAnchor8.mOwner;
                if (constraintWidget21.mListAnchors[i2].mTarget != null && constraintWidget21.mListAnchors[i2].mTarget.mOwner == constraintWidget19) {
                    constraintWidget20 = constraintWidget21;
                }
            }
            if (constraintWidget20 != null) {
                constraintWidget19 = constraintWidget20;
                z10 = z4;
            } else {
                z10 = true;
            }
            f2 = f3;
            constraintWidget16 = constraintWidget10;
            constraintWidget12 = constraintWidget11;
            z7 = z5;
        }
        ConstraintWidget constraintWidget22 = constraintWidget16;
        float f4 = f2;
        boolean z11 = z7;
        ConstraintWidget constraintWidget23 = constraintWidget12;
        if (constraintWidget15 != null) {
            int i11 = i2 + 1;
            if (constraintWidget13.mListAnchors[i11].mTarget != null) {
                ConstraintAnchor constraintAnchor9 = constraintWidget15.mListAnchors[i11];
                linearSystem.addLowerThan(constraintAnchor9.mSolverVariable, constraintWidget13.mListAnchors[i11].mTarget.mSolverVariable, -constraintAnchor9.getMargin(), 5);
                if (z6) {
                    int i12 = i2 + 1;
                    linearSystem.addGreaterThan(constraintWidgetContainer.mListAnchors[i12].mSolverVariable, constraintWidget13.mListAnchors[i12].mSolverVariable, constraintWidget13.mListAnchors[i12].getMargin(), 6);
                }
                arrayList = chainHead.mWeightedMatchConstraintsWidgets;
                if (arrayList != null && (size = arrayList.size()) > 1) {
                    if (chainHead.mHasUndefinedWeights && !chainHead.mHasComplexMatchWeights) {
                        f4 = chainHead.mWidgetsMatchCount;
                    }
                    float f5 = 0.0f;
                    float f6 = 0.0f;
                    ConstraintWidget constraintWidget24 = null;
                    i6 = 0;
                    while (i6 < size) {
                        ConstraintWidget constraintWidget25 = arrayList.get(i6);
                        float f7 = constraintWidget25.mWeight[i];
                        if (f7 < f5) {
                            if (chainHead.mHasComplexMatchWeights) {
                                linearSystem.addEquality(constraintWidget25.mListAnchors[i2 + 1].mSolverVariable, constraintWidget25.mListAnchors[i2].mSolverVariable, 0, 4);
                                arrayList2 = arrayList;
                                i6++;
                                arrayList = arrayList2;
                                f5 = 0.0f;
                            } else {
                                f7 = 1.0f;
                            }
                        }
                        if (f7 == f5) {
                            linearSystem.addEquality(constraintWidget25.mListAnchors[i2 + 1].mSolverVariable, constraintWidget25.mListAnchors[i2].mSolverVariable, 0, 6);
                            arrayList2 = arrayList;
                            i6++;
                            arrayList = arrayList2;
                            f5 = 0.0f;
                        } else {
                            if (constraintWidget24 != null) {
                                SolverVariable solverVariable6 = constraintWidget24.mListAnchors[i2].mSolverVariable;
                                int i13 = i2 + 1;
                                SolverVariable solverVariable7 = constraintWidget24.mListAnchors[i13].mSolverVariable;
                                SolverVariable solverVariable8 = constraintWidget25.mListAnchors[i2].mSolverVariable;
                                SolverVariable solverVariable9 = constraintWidget25.mListAnchors[i13].mSolverVariable;
                                arrayList2 = arrayList;
                                ArrayRow createRow = linearSystem.createRow();
                                createRow.createRowEqualMatchDimensions(f6, f4, f7, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                                linearSystem.addConstraint(createRow);
                            } else {
                                arrayList2 = arrayList;
                            }
                            constraintWidget24 = constraintWidget25;
                            f6 = f7;
                            i6++;
                            arrayList = arrayList2;
                            f5 = 0.0f;
                        }
                    }
                }
                if (constraintWidget14 == null && (constraintWidget14 == constraintWidget15 || z11)) {
                    ConstraintAnchor constraintAnchor10 = constraintWidget23.mListAnchors[i2];
                    int i14 = i2 + 1;
                    ConstraintAnchor constraintAnchor11 = constraintWidget13.mListAnchors[i14];
                    SolverVariable solverVariable10 = constraintWidget23.mListAnchors[i2].mTarget != null ? constraintWidget23.mListAnchors[i2].mTarget.mSolverVariable : null;
                    SolverVariable solverVariable11 = constraintWidget13.mListAnchors[i14].mTarget != null ? constraintWidget13.mListAnchors[i14].mTarget.mSolverVariable : null;
                    if (constraintWidget14 == constraintWidget15) {
                        constraintAnchor10 = constraintWidget14.mListAnchors[i2];
                        constraintAnchor11 = constraintWidget14.mListAnchors[i14];
                    }
                    if (solverVariable10 != null && solverVariable11 != null) {
                        if (i == 0) {
                            f = constraintWidget22.mHorizontalBiasPercent;
                        } else {
                            f = constraintWidget22.mVerticalBiasPercent;
                        }
                        linearSystem.addCentering(constraintAnchor10.mSolverVariable, solverVariable10, constraintAnchor10.getMargin(), f, solverVariable11, constraintAnchor11.mSolverVariable, constraintAnchor11.getMargin(), 5);
                    }
                } else if (z9 || constraintWidget14 == null) {
                    int i15 = 8;
                    if (z8 && constraintWidget14 != null) {
                        boolean z12 = chainHead.mWidgetsMatchCount <= 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                        ConstraintWidget constraintWidget26 = constraintWidget14;
                        constraintWidget = constraintWidget26;
                        while (constraintWidget != null) {
                            ConstraintWidget constraintWidget27 = constraintWidget.mNextChainWidget[i];
                            while (constraintWidget27 != null && constraintWidget27.getVisibility() == i15) {
                                constraintWidget27 = constraintWidget27.mNextChainWidget[i];
                            }
                            if (constraintWidget == constraintWidget14 || constraintWidget == constraintWidget15 || constraintWidget27 == null) {
                                constraintWidget2 = constraintWidget26;
                                constraintWidget3 = constraintWidget;
                                constraintWidget = constraintWidget27;
                            } else {
                                ConstraintWidget constraintWidget28 = constraintWidget27 == constraintWidget15 ? null : constraintWidget27;
                                ConstraintAnchor constraintAnchor12 = constraintWidget.mListAnchors[i2];
                                SolverVariable solverVariable12 = constraintAnchor12.mSolverVariable;
                                if (constraintAnchor12.mTarget != null) {
                                    SolverVariable solverVariable13 = constraintAnchor12.mTarget.mSolverVariable;
                                }
                                int i16 = i2 + 1;
                                SolverVariable solverVariable14 = constraintWidget26.mListAnchors[i16].mSolverVariable;
                                int margin2 = constraintAnchor12.getMargin();
                                int margin3 = constraintWidget.mListAnchors[i16].getMargin();
                                if (constraintWidget28 != null) {
                                    constraintAnchor4 = constraintWidget28.mListAnchors[i2];
                                    SolverVariable solverVariable15 = constraintAnchor4.mSolverVariable;
                                    constraintWidget4 = constraintWidget28;
                                    solverVariable2 = constraintAnchor4.mTarget != null ? constraintAnchor4.mTarget.mSolverVariable : null;
                                    solverVariable = solverVariable15;
                                } else {
                                    constraintWidget4 = constraintWidget28;
                                    constraintAnchor4 = constraintWidget.mListAnchors[i16].mTarget;
                                    solverVariable = constraintAnchor4 != null ? constraintAnchor4.mSolverVariable : null;
                                    solverVariable2 = constraintWidget.mListAnchors[i16].mSolverVariable;
                                }
                                if (constraintAnchor4 != null) {
                                    margin3 += constraintAnchor4.getMargin();
                                }
                                int i17 = margin3;
                                if (constraintWidget26 != null) {
                                    margin2 += constraintWidget26.mListAnchors[i16].getMargin();
                                }
                                int i18 = margin2;
                                int i19 = z12 ? 6 : 4;
                                if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                                    constraintWidget2 = constraintWidget26;
                                    constraintWidget3 = constraintWidget;
                                    constraintWidget5 = constraintWidget4;
                                } else {
                                    constraintWidget5 = constraintWidget4;
                                    constraintWidget3 = constraintWidget;
                                    constraintWidget2 = constraintWidget26;
                                    linearSystem.addCentering(solverVariable12, solverVariable14, i18, 0.5f, solverVariable, solverVariable2, i17, i19);
                                }
                                constraintWidget = constraintWidget5;
                            }
                            constraintWidget26 = constraintWidget3.getVisibility() != 8 ? constraintWidget3 : constraintWidget2;
                            i15 = 8;
                        }
                        ConstraintAnchor constraintAnchor13 = constraintWidget14.mListAnchors[i2];
                        constraintAnchor = constraintWidget23.mListAnchors[i2].mTarget;
                        int i20 = i2 + 1;
                        constraintAnchor2 = constraintWidget15.mListAnchors[i20];
                        constraintAnchor3 = constraintWidget13.mListAnchors[i20].mTarget;
                        if (constraintAnchor == null) {
                            if (constraintWidget14 != constraintWidget15) {
                                linearSystem3 = linearSystem;
                                linearSystem3.addEquality(constraintAnchor13.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor13.getMargin(), 5);
                            } else {
                                linearSystem3 = linearSystem;
                                if (constraintAnchor3 != null) {
                                    linearSystem2 = linearSystem3;
                                    linearSystem.addCentering(constraintAnchor13.mSolverVariable, constraintAnchor.mSolverVariable, constraintAnchor13.getMargin(), 0.5f, constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, constraintAnchor2.getMargin(), 5);
                                }
                            }
                            linearSystem2 = linearSystem3;
                        } else {
                            linearSystem2 = linearSystem;
                        }
                        if (constraintAnchor3 != null && constraintWidget14 != constraintWidget15) {
                            linearSystem2.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), 5);
                        }
                    }
                } else {
                    boolean z13 = chainHead.mWidgetsMatchCount > 0 && chainHead.mWidgetsCount == chainHead.mWidgetsMatchCount;
                    ConstraintWidget constraintWidget29 = constraintWidget14;
                    for (ConstraintWidget constraintWidget30 = constraintWidget29; constraintWidget30 != null; constraintWidget30 = constraintWidget9) {
                        ConstraintWidget constraintWidget31 = constraintWidget30.mNextChainWidget[i];
                        while (true) {
                            if (constraintWidget31 == null) {
                                i3 = 8;
                                break;
                            }
                            i3 = 8;
                            if (constraintWidget31.getVisibility() != 8) {
                                break;
                            } else {
                                constraintWidget31 = constraintWidget31.mNextChainWidget[i];
                            }
                        }
                        if (constraintWidget31 != null || constraintWidget30 == constraintWidget15) {
                            ConstraintAnchor constraintAnchor14 = constraintWidget30.mListAnchors[i2];
                            SolverVariable solverVariable16 = constraintAnchor14.mSolverVariable;
                            SolverVariable solverVariable17 = constraintAnchor14.mTarget != null ? constraintAnchor14.mTarget.mSolverVariable : null;
                            if (constraintWidget29 != constraintWidget30) {
                                solverVariable17 = constraintWidget29.mListAnchors[i2 + 1].mSolverVariable;
                            } else if (constraintWidget30 == constraintWidget14 && constraintWidget29 == constraintWidget30) {
                                solverVariable17 = constraintWidget23.mListAnchors[i2].mTarget != null ? constraintWidget23.mListAnchors[i2].mTarget.mSolverVariable : null;
                            }
                            int margin4 = constraintAnchor14.getMargin();
                            int i21 = i2 + 1;
                            int margin5 = constraintWidget30.mListAnchors[i21].getMargin();
                            if (constraintWidget31 != null) {
                                ConstraintAnchor constraintAnchor15 = constraintWidget31.mListAnchors[i2];
                                constraintWidget6 = constraintWidget31;
                                solverVariable3 = constraintAnchor15.mSolverVariable;
                                constraintAnchor6 = constraintAnchor15;
                                solverVariable4 = constraintWidget30.mListAnchors[i21].mSolverVariable;
                            } else {
                                constraintWidget6 = constraintWidget31;
                                ConstraintAnchor constraintAnchor16 = constraintWidget13.mListAnchors[i21].mTarget;
                                if (constraintAnchor16 != null) {
                                    solverVariable3 = constraintAnchor16.mSolverVariable;
                                    constraintAnchor5 = constraintAnchor16;
                                } else {
                                    constraintAnchor5 = constraintAnchor16;
                                    solverVariable3 = null;
                                }
                                solverVariable4 = constraintWidget30.mListAnchors[i21].mSolverVariable;
                                constraintAnchor6 = constraintAnchor5;
                            }
                            SolverVariable solverVariable18 = solverVariable3;
                            SolverVariable solverVariable19 = solverVariable4;
                            if (constraintAnchor6 != null) {
                                margin5 += constraintAnchor6.getMargin();
                            }
                            if (constraintWidget29 != null) {
                                i4 = margin5;
                                margin4 += constraintWidget29.mListAnchors[i21].getMargin();
                            } else {
                                i4 = margin5;
                            }
                            if (solverVariable16 == null || solverVariable17 == null || solverVariable18 == null || solverVariable19 == null) {
                                constraintWidget7 = constraintWidget29;
                                constraintWidget8 = constraintWidget30;
                                constraintWidget9 = constraintWidget6;
                                i5 = 8;
                            } else {
                                if (constraintWidget30 == constraintWidget14) {
                                    margin4 = constraintWidget14.mListAnchors[i2].getMargin();
                                }
                                int i22 = margin4;
                                if (constraintWidget30 == constraintWidget15) {
                                    i4 = constraintWidget15.mListAnchors[i21].getMargin();
                                }
                                constraintWidget9 = constraintWidget6;
                                constraintWidget7 = constraintWidget29;
                                i5 = 8;
                                constraintWidget8 = constraintWidget30;
                                linearSystem.addCentering(solverVariable16, solverVariable17, i22, 0.5f, solverVariable18, solverVariable19, i4, z13 ? 6 : 4);
                                constraintWidget29 = constraintWidget8.getVisibility() == i5 ? constraintWidget8 : constraintWidget7;
                            }
                        } else {
                            i5 = i3;
                            constraintWidget9 = constraintWidget31;
                            constraintWidget7 = constraintWidget29;
                            constraintWidget8 = constraintWidget30;
                        }
                        if (constraintWidget8.getVisibility() == i5) {
                        }
                    }
                }
                if ((!z9 || z8) && constraintWidget14 != null) {
                    ConstraintAnchor constraintAnchor17 = constraintWidget14.mListAnchors[i2];
                    int i23 = i2 + 1;
                    ConstraintAnchor constraintAnchor18 = constraintWidget15.mListAnchors[i23];
                    solverVariable5 = constraintAnchor17.mTarget != null ? constraintAnchor17.mTarget.mSolverVariable : null;
                    SolverVariable solverVariable20 = constraintAnchor18.mTarget != null ? constraintAnchor18.mTarget.mSolverVariable : null;
                    if (constraintWidget13 != constraintWidget15) {
                        ConstraintAnchor constraintAnchor19 = constraintWidget13.mListAnchors[i23];
                        solverVariable20 = constraintAnchor19.mTarget != null ? constraintAnchor19.mTarget.mSolverVariable : null;
                    }
                    SolverVariable solverVariable21 = solverVariable20;
                    if (constraintWidget14 == constraintWidget15) {
                        constraintAnchor17 = constraintWidget14.mListAnchors[i2];
                        constraintAnchor18 = constraintWidget14.mListAnchors[i23];
                    }
                    if (solverVariable5 == null || solverVariable21 == null) {
                        return;
                    }
                    int margin6 = constraintAnchor17.getMargin();
                    if (constraintWidget15 != null) {
                        constraintWidget13 = constraintWidget15;
                    }
                    linearSystem.addCentering(constraintAnchor17.mSolverVariable, solverVariable5, margin6, 0.5f, solverVariable21, constraintAnchor18.mSolverVariable, constraintWidget13.mListAnchors[i23].getMargin(), 5);
                    return;
                }
                return;
            }
        }
        if (z6) {
        }
        arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null) {
            if (chainHead.mHasUndefinedWeights) {
                f4 = chainHead.mWidgetsMatchCount;
            }
            float f52 = 0.0f;
            float f62 = 0.0f;
            ConstraintWidget constraintWidget242 = null;
            i6 = 0;
            while (i6 < size) {
            }
        }
        if (constraintWidget14 == null) {
        }
        if (z9) {
        }
        int i152 = 8;
        if (z8) {
            if (chainHead.mWidgetsMatchCount <= 0) {
            }
            ConstraintWidget constraintWidget262 = constraintWidget14;
            constraintWidget = constraintWidget262;
            while (constraintWidget != null) {
            }
            ConstraintAnchor constraintAnchor132 = constraintWidget14.mListAnchors[i2];
            constraintAnchor = constraintWidget23.mListAnchors[i2].mTarget;
            int i202 = i2 + 1;
            constraintAnchor2 = constraintWidget15.mListAnchors[i202];
            constraintAnchor3 = constraintWidget13.mListAnchors[i202].mTarget;
            if (constraintAnchor == null) {
            }
            if (constraintAnchor3 != null) {
                linearSystem2.addEquality(constraintAnchor2.mSolverVariable, constraintAnchor3.mSolverVariable, -constraintAnchor2.getMargin(), 5);
            }
            if (z9) {
            }
            ConstraintAnchor constraintAnchor172 = constraintWidget14.mListAnchors[i2];
            int i232 = i2 + 1;
            ConstraintAnchor constraintAnchor182 = constraintWidget15.mListAnchors[i232];
            if (constraintAnchor172.mTarget != null) {
            }
            if (constraintAnchor182.mTarget != null) {
            }
            if (constraintWidget13 != constraintWidget15) {
            }
            SolverVariable solverVariable212 = solverVariable20;
            if (constraintWidget14 == constraintWidget15) {
            }
            if (solverVariable5 == null) {
                return;
            } else {
                return;
            }
        }
        if (z9) {
        }
        ConstraintAnchor constraintAnchor1722 = constraintWidget14.mListAnchors[i2];
        int i2322 = i2 + 1;
        ConstraintAnchor constraintAnchor1822 = constraintWidget15.mListAnchors[i2322];
        if (constraintAnchor1722.mTarget != null) {
        }
        if (constraintAnchor1822.mTarget != null) {
        }
        if (constraintWidget13 != constraintWidget15) {
        }
        SolverVariable solverVariable2122 = solverVariable20;
        if (constraintWidget14 == constraintWidget15) {
        }
        if (solverVariable5 == null) {
        }
    }
}
