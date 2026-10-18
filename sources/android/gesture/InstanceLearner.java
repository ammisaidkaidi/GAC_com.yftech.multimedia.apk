package android.gesture;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.TreeMap;

/* loaded from: /home/user/work/dex/classes.dex */
class InstanceLearner extends Learner {
    private static final Comparator<Prediction> sComparator = new Comparator<Prediction>() { // from class: android.gesture.InstanceLearner.1
        @Override // java.util.Comparator
        public int compare(Prediction prediction, Prediction prediction2) {
            double d = prediction.score;
            double d2 = prediction2.score;
            if (d > d2) {
                return -1;
            }
            return d < d2 ? 1 : 0;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.gesture.Learner
    public ArrayList<Prediction> classify(int i, int i2, float[] fArr) {
        double squaredEuclideanDistance;
        ArrayList<Prediction> arrayList = new ArrayList<>();
        ArrayList<Instance> instances = getInstances();
        int size = instances.size();
        TreeMap treeMap = new TreeMap();
        for (int i3 = 0; i3 < size; i3++) {
            Instance instance = instances.get(i3);
            if (instance.vector.length == fArr.length) {
                if (i == 2) {
                    squaredEuclideanDistance = GestureUtils.minimumCosineDistance(instance.vector, fArr, i2);
                } else {
                    squaredEuclideanDistance = GestureUtils.squaredEuclideanDistance(instance.vector, fArr);
                }
                double d = squaredEuclideanDistance == 0.0d ? Double.MAX_VALUE : 1.0d / squaredEuclideanDistance;
                Double d2 = (Double) treeMap.get(instance.label);
                if (d2 == null || d > d2.doubleValue()) {
                    treeMap.put(instance.label, Double.valueOf(d));
                }
            }
        }
        for (String str : treeMap.keySet()) {
            arrayList.add(new Prediction(str, ((Double) treeMap.get(str)).doubleValue()));
        }
        Collections.sort(arrayList, sComparator);
        return arrayList;
    }
}
