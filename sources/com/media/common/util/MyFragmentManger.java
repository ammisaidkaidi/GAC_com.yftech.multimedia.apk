package com.media.common.util;

import android.util.SparseArray;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.Stack;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyFragmentManger {
    private static volatile MyFragmentManger instance;
    private int photoLayoutId;
    private int videoPlayerLayoutId;
    private FragmentManager fragmentManager = null;
    private Fragment currentFragment = null;
    private SparseArray<Stack<Fragment>> fragments = new SparseArray<>();

    public static MyFragmentManger getInstance() {
        if (instance == null) {
            synchronized (MyFragmentManger.class) {
                if (instance == null) {
                    instance = new MyFragmentManger();
                }
            }
        }
        return instance;
    }

    private MyFragmentManger() {
    }

    public void init(FragmentManager fragmentManager) {
        LogUtil.d("init FragmentManager");
        this.fragmentManager = fragmentManager;
        this.currentFragment = null;
        if (this.fragments != null) {
            this.fragments.clear();
        }
    }

    public void release() {
        LogUtil.d("release MyFragmentManger");
        if (this.fragments == null) {
            return;
        }
        for (int i = 0; i < this.fragments.size(); i++) {
            Stack<Fragment> fragmentStack = getInstance().getFragmentStack(this.fragments.keyAt(i));
            if (fragmentStack != null) {
                FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
                while (fragmentStack.size() > 0) {
                    beginTransaction.remove(fragmentStack.pop());
                }
                beginTransaction.commitAllowingStateLoss();
            }
        }
        this.currentFragment = null;
        this.fragmentManager = null;
        this.fragments.clear();
        this.fragments = null;
    }

    public synchronized void pushFragment(int i, Fragment fragment) {
        LogUtil.d("pushFragment:index=" + i);
        if (this.fragments == null) {
            this.fragments = new SparseArray<>();
        }
        Stack<Fragment> stack = this.fragments.get(i);
        if (stack == null) {
            Stack<Fragment> stack2 = new Stack<>();
            stack2.push(fragment);
            this.fragments.append(i, stack2);
        } else {
            stack.push(fragment);
        }
    }

    public Stack<Fragment> getFragmentStack(int i) {
        LogUtil.d("getFragmentStack:index=" + i + ", fragments:" + this.fragments);
        if (this.fragments != null) {
            return this.fragments.get(i);
        }
        return null;
    }

    public void removeFragmentStack(int i) {
        LogUtil.d("removeFragmentStack:index=" + i);
        if (this.fragments != null) {
            this.fragments.remove(i);
        }
    }

    public SparseArray<Stack<Fragment>> getAllFragments() {
        return this.fragments;
    }

    public int getVideoPlayerLayoutId() {
        return this.videoPlayerLayoutId;
    }

    public void setVideoPlayerLayoutId(int i) {
        this.videoPlayerLayoutId = i;
    }

    public int getPhotoLayoutId() {
        return this.photoLayoutId;
    }

    public void setPhotoLayoutId(int i) {
        this.photoLayoutId = i;
    }

    public synchronized void switchContent(Fragment fragment, int i) {
        if (this.fragmentManager == null) {
            throw new IllegalArgumentException("fragmentManager is null");
        }
        FragmentTransaction beginTransaction = this.fragmentManager.beginTransaction();
        if (this.currentFragment == null && fragment.isAdded()) {
            beginTransaction.show(fragment).commitNowAllowingStateLoss();
        } else if (this.currentFragment == null) {
            beginTransaction.add(i, fragment).commitNowAllowingStateLoss();
        } else if (this.currentFragment != fragment) {
            if (!fragment.isAdded()) {
                beginTransaction.hide(this.currentFragment).add(i, fragment).commitNowAllowingStateLoss();
            } else {
                beginTransaction.hide(this.currentFragment).show(fragment).commitNowAllowingStateLoss();
            }
        }
        this.currentFragment = fragment;
    }
}
