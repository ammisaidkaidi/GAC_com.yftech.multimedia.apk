package com.android.framework.protobuf.nano;

import java.util.HashMap;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class MapFactories {
    private static volatile MapFactory mapFactory = new DefaultMapFactory();

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface MapFactory {
        <K, V> Map<K, V> forMap(Map<K, V> map);
    }

    static void setMapFactory(MapFactory mapFactory2) {
        mapFactory = mapFactory2;
    }

    public static MapFactory getMapFactory() {
        return mapFactory;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static class DefaultMapFactory implements MapFactory {
        private DefaultMapFactory() {
        }

        @Override // com.android.framework.protobuf.nano.MapFactories.MapFactory
        public <K, V> Map<K, V> forMap(Map<K, V> map) {
            return map == null ? new HashMap() : map;
        }
    }

    private MapFactories() {
    }
}
