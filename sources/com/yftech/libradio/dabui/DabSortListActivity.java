package com.yftech.libradio.dabui;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import com.media.common.util.LogUtil;
import com.yftech.car.bluetooth.CarBluetoothManager;
import com.yftech.car.bluetooth.model.PhoneCall;
import com.yftech.libradio.R;
import com.yftech.libradio.Utils;
import com.yftech.libradio.dialog.DabSearchingDialog;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DabSortListActivity extends AppCompatActivity {
    private static final int TAB_TYPE_ALL_STATION = 20003;
    private static final int TAB_TYPE_SORTED_LIST = 20005;
    private static final int TAB_TYPE_STATION_LIST = 20004;
    private String FRAGMENT_TAG1 = "fragment_allStationFragment";
    private String FRAGMENT_TAG2 = "fragment_stationListFragment";
    private String FRAGMENT_TAG3 = "fragment_sortedListFragment";
    private DabAllStationFragment allStationFragment;
    private RadioButton rbAllStation;
    private RadioButton rbSortedList;
    private RadioButton rbStationList;
    private RadioGroup rgDabList;
    private DabStationFilterByPtyFragment sortedListFragment;
    private DabStationFilterByEnsembleFragment stationListFragment;
    private View viewSearch;

    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_dab_sort_list);
        this.rbAllStation = (RadioButton) findViewById(R.id.rb_dab_all_station);
        this.rbStationList = (RadioButton) findViewById(R.id.rb_dab_station_list);
        this.rbSortedList = (RadioButton) findViewById(R.id.rb_dab_sort_station_list);
        this.rgDabList = (RadioGroup) findViewById(R.id.tab_dab_list);
        this.viewSearch = findViewById(R.id.layout_dab_search);
        this.allStationFragment = new DabAllStationFragment();
        this.stationListFragment = new DabStationFilterByEnsembleFragment();
        this.sortedListFragment = new DabStationFilterByPtyFragment();
        this.rgDabList.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yftech.libradio.dabui.DabSortListActivity.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                if (i == R.id.rb_dab_all_station) {
                    DabSortListActivity.this.showTypeView(DabSortListActivity.TAB_TYPE_ALL_STATION);
                } else if (i == R.id.rb_dab_station_list) {
                    DabSortListActivity.this.showTypeView(DabSortListActivity.TAB_TYPE_STATION_LIST);
                } else if (i == R.id.rb_dab_sort_station_list) {
                    DabSortListActivity.this.showTypeView(DabSortListActivity.TAB_TYPE_SORTED_LIST);
                }
            }
        });
        this.viewSearch.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.libradio.dabui.DabSortListActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Utils.isQuickClick()) {
                    LogUtil.i("imgSearch quick click");
                    return;
                }
                List phoneCalls = CarBluetoothManager.getInstance().getPhoneCalls();
                if (phoneCalls != null && !phoneCalls.isEmpty()) {
                    PhoneCall phoneCall = (PhoneCall) phoneCalls.get(0);
                    if (phoneCall.getCallState() == 2 || phoneCall.getCallState() == 1 || phoneCall.getCallState() == 4 || phoneCall.getCallState() == 3) {
                        LogUtil.i("phone call is doing ,callState: " + phoneCall.getCallState());
                        return;
                    }
                }
                DabSearchingDialog.newInstance(DabSortListActivity.this.getString(R.string.radio_channel_search_dialog_search_scanning)).show(DabSortListActivity.this.getSupportFragmentManager(), DabSearchingDialog.class.getSimpleName());
            }
        });
    }

    protected void onStart() {
        super.onStart();
        this.rbAllStation.setChecked(true);
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    private void showFragment(Fragment fragment) {
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_group_dab_list, fragment).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTypeView(int i) {
        if (TAB_TYPE_ALL_STATION == i) {
            this.rbAllStation.setTypeface(Typeface.create("sourcehan-sans-regular", 0));
            this.rbAllStation.setTextColor(getColor(R.color.colorFFFFFF));
            this.rbStationList.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbStationList.setTextColor(getColor(R.color.colorB3FFFFFF));
            this.rbSortedList.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbSortedList.setTextColor(getColor(R.color.colorB3FFFFFF));
            showFragment(this.allStationFragment);
            return;
        }
        if (TAB_TYPE_STATION_LIST == i) {
            this.rbAllStation.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbAllStation.setTextColor(getColor(R.color.colorB3FFFFFF));
            this.rbStationList.setTypeface(Typeface.create("sourcehan-sans-regular", 0));
            this.rbStationList.setTextColor(getColor(R.color.colorFFFFFF));
            this.rbSortedList.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbSortedList.setTextColor(getColor(R.color.colorB3FFFFFF));
            showFragment(this.stationListFragment);
            return;
        }
        if (TAB_TYPE_SORTED_LIST == i) {
            this.rbAllStation.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbAllStation.setTextColor(getColor(R.color.colorB3FFFFFF));
            this.rbStationList.setTypeface(Typeface.create("sourcehan-sans-medium", 0));
            this.rbStationList.setTextColor(getColor(R.color.colorB3FFFFFF));
            this.rbSortedList.setTypeface(Typeface.create("sourcehan-sans-regular", 0));
            this.rbSortedList.setTextColor(getColor(R.color.colorFFFFFF));
            showFragment(this.sortedListFragment);
            return;
        }
        LogUtil.w("tab switch showTypeView error---");
    }
}
