package android.gesture;

import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
abstract class Learner {
    private final ArrayList<Instance> mInstances = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract ArrayList<Prediction> classify(int i, int i2, float[] fArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addInstance(Instance instance) {
        this.mInstances.add(instance);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<Instance> getInstances() {
        return this.mInstances;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeInstance(long j) {
        ArrayList<Instance> arrayList = this.mInstances;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Instance instance = arrayList.get(i);
            if (j == instance.id) {
                arrayList.remove(instance);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeInstances(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Instance> arrayList2 = this.mInstances;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            Instance instance = arrayList2.get(i);
            if ((instance.label == null && str == null) || (instance.label != null && instance.label.equals(str))) {
                arrayList.add(instance);
            }
        }
        arrayList2.removeAll(arrayList);
    }
}
