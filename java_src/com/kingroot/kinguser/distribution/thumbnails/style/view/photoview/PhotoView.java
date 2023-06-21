package com.kingroot.kinguser.distribution.thumbnails.style.view.photoview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import android.widget.Scroller;
import com.kingroot.kinguser.C1432app;
import com.kingroot.kinguser.apq;
import com.kingroot.kinguser.apr;
/* loaded from: classes.dex */
public class PhotoView extends ImageView {

    /* renamed from: ND */
    private boolean f2453ND;
    private apr aIA;
    private ScaleGestureDetector aIB;
    private boolean aIC;
    private boolean aID;
    private boolean aIE;
    private boolean aIF;
    private boolean aIG;
    private boolean aIH;
    private boolean aII;
    private boolean aIJ;
    private boolean aIK;
    private float aIL;
    private int aIM;
    private int aIN;
    private float aIO;
    private float aIP;
    private RectF aIQ;
    private RectF aIR;
    private PointF aIS;
    private PointF aIT;
    private RunnableC2994f aIU;
    private RectF aIV;
    private C1432app aIW;
    private long aIX;
    private Runnable aIY;
    private View.OnLongClickListener aIZ;
    private RectF aIi;
    private RectF aIj;
    private RectF aIk;
    private PointF aIl;
    private float aIm;
    private float aIn;
    private ImageView.ScaleType aIo;
    private int aIp;
    private int aIq;
    private float aIr;
    private int aIs;
    private int aIt;
    private int aIu;
    private int aIv;
    private Matrix aIw;
    private Matrix aIx;
    private Matrix aIy;
    private Matrix aIz;
    private apq aJa;
    private ScaleGestureDetector.OnScaleGestureListener aJb;
    private Runnable aJc;
    private GestureDetector.OnGestureListener aJd;
    private View.OnClickListener aiQ;
    private boolean isInit;
    private GestureDetector mDetector;

    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2989a {
        /* renamed from: LF */
        float mo3931LF();
    }

    public PhotoView(Context context) {
        super(context);
        this.aIs = 0;
        this.aIt = 0;
        this.aIu = 0;
        this.aIv = 500;
        this.aIw = new Matrix();
        this.aIx = new Matrix();
        this.aIy = new Matrix();
        this.aIz = new Matrix();
        this.f2453ND = false;
        this.aIm = 1.0f;
        this.aIj = new RectF();
        this.aIk = new RectF();
        this.aIi = new RectF();
        this.aIQ = new RectF();
        this.aIR = new RectF();
        this.aIl = new PointF();
        this.aIS = new PointF();
        this.aIT = new PointF();
        this.aIU = new RunnableC2994f();
        this.aJa = new apq() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.1
            @Override // com.kingroot.kinguser.apq
            /* renamed from: a */
            public void mo3933a(float f, float f2, float f3) {
                PhotoView.this.aIL += f;
                if (!PhotoView.this.aII) {
                    if (Math.abs(PhotoView.this.aIL) >= PhotoView.this.aIp) {
                        PhotoView.this.aII = true;
                        PhotoView.this.aIL = 0.0f;
                        return;
                    }
                    return;
                }
                PhotoView.this.aIn += f;
                PhotoView.this.aIx.postRotate(f, f2, f3);
            }
        };
        this.aJb = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.2
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                PhotoView.this.aIm *= scaleFactor;
                PhotoView.this.aIx.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }
        };
        this.aJc = new Runnable() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (PhotoView.this.aiQ != null) {
                    PhotoView.this.aiQ.onClick(PhotoView.this);
                }
            }
        };
        this.aJd = new GestureDetector.SimpleOnGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.4
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (PhotoView.this.aIZ != null) {
                    PhotoView.this.aIZ.onLongClick(PhotoView.this);
                }
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                PhotoView.this.aIF = false;
                PhotoView.this.aIC = false;
                PhotoView.this.aII = false;
                PhotoView.this.removeCallbacks(PhotoView.this.aJc);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIC) {
                    return false;
                }
                if ((PhotoView.this.aIJ || PhotoView.this.aIK) && !PhotoView.this.aIU.aJh) {
                    float f3 = (((float) Math.round(PhotoView.this.aIi.left)) >= PhotoView.this.aIj.left || ((float) Math.round(PhotoView.this.aIi.right)) <= PhotoView.this.aIj.right) ? 0.0f : f;
                    float f4 = (((float) Math.round(PhotoView.this.aIi.top)) >= PhotoView.this.aIj.top || ((float) Math.round(PhotoView.this.aIi.bottom)) <= PhotoView.this.aIj.bottom) ? 0.0f : f2;
                    if (PhotoView.this.aII || PhotoView.this.aIn % 90.0f != 0.0f) {
                        float f5 = ((int) (PhotoView.this.aIn / 90.0f)) * 90;
                        float f6 = PhotoView.this.aIn % 90.0f;
                        if (f6 > 45.0f) {
                            f5 += 90.0f;
                        } else if (f6 < -45.0f) {
                            f5 -= 90.0f;
                        }
                        PhotoView.this.aIU.m3928M((int) PhotoView.this.aIn, (int) f5);
                        PhotoView.this.aIn = f5;
                    }
                    PhotoView.this.m3986a(PhotoView.this.aIi);
                    PhotoView.this.aIU.m3924i(f3, f4);
                    PhotoView.this.aIU.start();
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIU.aJh) {
                    PhotoView.this.aIU.stop();
                }
                if (!PhotoView.this.m3941u(f)) {
                    if (PhotoView.this.aIJ || PhotoView.this.aIC || PhotoView.this.aIF) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f < 0.0f && PhotoView.this.aIi.left - f > PhotoView.this.aIR.left) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.left - PhotoView.this.aIR.left, f);
                            }
                            if (f > 0.0f && PhotoView.this.aIi.right - f < PhotoView.this.aIR.right) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.right - PhotoView.this.aIR.right, f);
                            }
                        }
                        PhotoView.this.aIM = (int) (PhotoView.this.aIM - f);
                        PhotoView.this.aIx.postTranslate(-f, 0.0f);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f3 = (f >= 0.0f || PhotoView.this.aIi.left - f <= PhotoView.this.aIj.left) ? f : PhotoView.this.aIi.left;
                    if (f3 > 0.0f && PhotoView.this.aIi.right - f3 < PhotoView.this.aIj.right) {
                        f3 = PhotoView.this.aIi.right - PhotoView.this.aIj.right;
                    }
                    PhotoView.this.aIx.postTranslate(-f3, 0.0f);
                    PhotoView.this.aIM = (int) (PhotoView.this.aIM - f3);
                }
                if (!PhotoView.this.m3939v(f2)) {
                    if (PhotoView.this.aIK || PhotoView.this.aIF || PhotoView.this.aIC) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f2 < 0.0f && PhotoView.this.aIi.top - f2 > PhotoView.this.aIR.top) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.top - PhotoView.this.aIR.top, f2);
                            }
                            if (f2 > 0.0f && PhotoView.this.aIi.bottom - f2 < PhotoView.this.aIR.bottom) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.bottom - PhotoView.this.aIR.bottom, f2);
                            }
                        }
                        PhotoView.this.aIx.postTranslate(0.0f, -f2);
                        PhotoView.this.aIN = (int) (PhotoView.this.aIN - f2);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f4 = (f2 >= 0.0f || PhotoView.this.aIi.top - f2 <= PhotoView.this.aIj.top) ? f2 : PhotoView.this.aIi.top;
                    if (f4 > 0.0f && PhotoView.this.aIi.bottom - f4 < PhotoView.this.aIj.bottom) {
                        f4 = PhotoView.this.aIi.bottom - PhotoView.this.aIj.bottom;
                    }
                    PhotoView.this.aIx.postTranslate(0.0f, -f4);
                    PhotoView.this.aIN = (int) (PhotoView.this.aIN - f4);
                }
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                PhotoView.this.postDelayed(PhotoView.this.aJc, 250L);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                float f;
                float f2;
                PhotoView.this.aIU.stop();
                float width = PhotoView.this.aIi.left + (PhotoView.this.aIi.width() / 2.0f);
                float height = PhotoView.this.aIi.top + (PhotoView.this.aIi.height() / 2.0f);
                PhotoView.this.aIS.set(width, height);
                PhotoView.this.aIT.set(width, height);
                PhotoView.this.aIM = 0;
                PhotoView.this.aIN = 0;
                if (PhotoView.this.aIH) {
                    f = PhotoView.this.aIm;
                    f2 = 1.0f;
                } else {
                    f = PhotoView.this.aIm;
                    f2 = PhotoView.this.aIr;
                    PhotoView.this.aIS.set(motionEvent.getX(), motionEvent.getY());
                }
                PhotoView.this.aIz.reset();
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIk.left, -PhotoView.this.aIk.top);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIO, -PhotoView.this.aIP);
                PhotoView.this.aIz.postRotate(PhotoView.this.aIn, PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postScale(f2, f2, PhotoView.this.aIS.x, PhotoView.this.aIS.y);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIM, PhotoView.this.aIN);
                PhotoView.this.aIz.mapRect(PhotoView.this.aIQ, PhotoView.this.aIk);
                PhotoView.this.m3986a(PhotoView.this.aIQ);
                PhotoView.this.aIH = !PhotoView.this.aIH;
                PhotoView.this.aIU.m3925h(f, f2);
                PhotoView.this.aIU.start();
                return false;
            }
        };
        init();
    }

    public PhotoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aIs = 0;
        this.aIt = 0;
        this.aIu = 0;
        this.aIv = 500;
        this.aIw = new Matrix();
        this.aIx = new Matrix();
        this.aIy = new Matrix();
        this.aIz = new Matrix();
        this.f2453ND = false;
        this.aIm = 1.0f;
        this.aIj = new RectF();
        this.aIk = new RectF();
        this.aIi = new RectF();
        this.aIQ = new RectF();
        this.aIR = new RectF();
        this.aIl = new PointF();
        this.aIS = new PointF();
        this.aIT = new PointF();
        this.aIU = new RunnableC2994f();
        this.aJa = new apq() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.1
            @Override // com.kingroot.kinguser.apq
            /* renamed from: a */
            public void mo3933a(float f, float f2, float f3) {
                PhotoView.this.aIL += f;
                if (!PhotoView.this.aII) {
                    if (Math.abs(PhotoView.this.aIL) >= PhotoView.this.aIp) {
                        PhotoView.this.aII = true;
                        PhotoView.this.aIL = 0.0f;
                        return;
                    }
                    return;
                }
                PhotoView.this.aIn += f;
                PhotoView.this.aIx.postRotate(f, f2, f3);
            }
        };
        this.aJb = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.2
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                PhotoView.this.aIm *= scaleFactor;
                PhotoView.this.aIx.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }
        };
        this.aJc = new Runnable() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (PhotoView.this.aiQ != null) {
                    PhotoView.this.aiQ.onClick(PhotoView.this);
                }
            }
        };
        this.aJd = new GestureDetector.SimpleOnGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.4
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (PhotoView.this.aIZ != null) {
                    PhotoView.this.aIZ.onLongClick(PhotoView.this);
                }
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                PhotoView.this.aIF = false;
                PhotoView.this.aIC = false;
                PhotoView.this.aII = false;
                PhotoView.this.removeCallbacks(PhotoView.this.aJc);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIC) {
                    return false;
                }
                if ((PhotoView.this.aIJ || PhotoView.this.aIK) && !PhotoView.this.aIU.aJh) {
                    float f3 = (((float) Math.round(PhotoView.this.aIi.left)) >= PhotoView.this.aIj.left || ((float) Math.round(PhotoView.this.aIi.right)) <= PhotoView.this.aIj.right) ? 0.0f : f;
                    float f4 = (((float) Math.round(PhotoView.this.aIi.top)) >= PhotoView.this.aIj.top || ((float) Math.round(PhotoView.this.aIi.bottom)) <= PhotoView.this.aIj.bottom) ? 0.0f : f2;
                    if (PhotoView.this.aII || PhotoView.this.aIn % 90.0f != 0.0f) {
                        float f5 = ((int) (PhotoView.this.aIn / 90.0f)) * 90;
                        float f6 = PhotoView.this.aIn % 90.0f;
                        if (f6 > 45.0f) {
                            f5 += 90.0f;
                        } else if (f6 < -45.0f) {
                            f5 -= 90.0f;
                        }
                        PhotoView.this.aIU.m3928M((int) PhotoView.this.aIn, (int) f5);
                        PhotoView.this.aIn = f5;
                    }
                    PhotoView.this.m3986a(PhotoView.this.aIi);
                    PhotoView.this.aIU.m3924i(f3, f4);
                    PhotoView.this.aIU.start();
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIU.aJh) {
                    PhotoView.this.aIU.stop();
                }
                if (!PhotoView.this.m3941u(f)) {
                    if (PhotoView.this.aIJ || PhotoView.this.aIC || PhotoView.this.aIF) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f < 0.0f && PhotoView.this.aIi.left - f > PhotoView.this.aIR.left) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.left - PhotoView.this.aIR.left, f);
                            }
                            if (f > 0.0f && PhotoView.this.aIi.right - f < PhotoView.this.aIR.right) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.right - PhotoView.this.aIR.right, f);
                            }
                        }
                        PhotoView.this.aIM = (int) (PhotoView.this.aIM - f);
                        PhotoView.this.aIx.postTranslate(-f, 0.0f);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f3 = (f >= 0.0f || PhotoView.this.aIi.left - f <= PhotoView.this.aIj.left) ? f : PhotoView.this.aIi.left;
                    if (f3 > 0.0f && PhotoView.this.aIi.right - f3 < PhotoView.this.aIj.right) {
                        f3 = PhotoView.this.aIi.right - PhotoView.this.aIj.right;
                    }
                    PhotoView.this.aIx.postTranslate(-f3, 0.0f);
                    PhotoView.this.aIM = (int) (PhotoView.this.aIM - f3);
                }
                if (!PhotoView.this.m3939v(f2)) {
                    if (PhotoView.this.aIK || PhotoView.this.aIF || PhotoView.this.aIC) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f2 < 0.0f && PhotoView.this.aIi.top - f2 > PhotoView.this.aIR.top) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.top - PhotoView.this.aIR.top, f2);
                            }
                            if (f2 > 0.0f && PhotoView.this.aIi.bottom - f2 < PhotoView.this.aIR.bottom) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.bottom - PhotoView.this.aIR.bottom, f2);
                            }
                        }
                        PhotoView.this.aIx.postTranslate(0.0f, -f2);
                        PhotoView.this.aIN = (int) (PhotoView.this.aIN - f2);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f4 = (f2 >= 0.0f || PhotoView.this.aIi.top - f2 <= PhotoView.this.aIj.top) ? f2 : PhotoView.this.aIi.top;
                    if (f4 > 0.0f && PhotoView.this.aIi.bottom - f4 < PhotoView.this.aIj.bottom) {
                        f4 = PhotoView.this.aIi.bottom - PhotoView.this.aIj.bottom;
                    }
                    PhotoView.this.aIx.postTranslate(0.0f, -f4);
                    PhotoView.this.aIN = (int) (PhotoView.this.aIN - f4);
                }
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                PhotoView.this.postDelayed(PhotoView.this.aJc, 250L);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                float f;
                float f2;
                PhotoView.this.aIU.stop();
                float width = PhotoView.this.aIi.left + (PhotoView.this.aIi.width() / 2.0f);
                float height = PhotoView.this.aIi.top + (PhotoView.this.aIi.height() / 2.0f);
                PhotoView.this.aIS.set(width, height);
                PhotoView.this.aIT.set(width, height);
                PhotoView.this.aIM = 0;
                PhotoView.this.aIN = 0;
                if (PhotoView.this.aIH) {
                    f = PhotoView.this.aIm;
                    f2 = 1.0f;
                } else {
                    f = PhotoView.this.aIm;
                    f2 = PhotoView.this.aIr;
                    PhotoView.this.aIS.set(motionEvent.getX(), motionEvent.getY());
                }
                PhotoView.this.aIz.reset();
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIk.left, -PhotoView.this.aIk.top);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIO, -PhotoView.this.aIP);
                PhotoView.this.aIz.postRotate(PhotoView.this.aIn, PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postScale(f2, f2, PhotoView.this.aIS.x, PhotoView.this.aIS.y);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIM, PhotoView.this.aIN);
                PhotoView.this.aIz.mapRect(PhotoView.this.aIQ, PhotoView.this.aIk);
                PhotoView.this.m3986a(PhotoView.this.aIQ);
                PhotoView.this.aIH = !PhotoView.this.aIH;
                PhotoView.this.aIU.m3925h(f, f2);
                PhotoView.this.aIU.start();
                return false;
            }
        };
        init();
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aIs = 0;
        this.aIt = 0;
        this.aIu = 0;
        this.aIv = 500;
        this.aIw = new Matrix();
        this.aIx = new Matrix();
        this.aIy = new Matrix();
        this.aIz = new Matrix();
        this.f2453ND = false;
        this.aIm = 1.0f;
        this.aIj = new RectF();
        this.aIk = new RectF();
        this.aIi = new RectF();
        this.aIQ = new RectF();
        this.aIR = new RectF();
        this.aIl = new PointF();
        this.aIS = new PointF();
        this.aIT = new PointF();
        this.aIU = new RunnableC2994f();
        this.aJa = new apq() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.1
            @Override // com.kingroot.kinguser.apq
            /* renamed from: a */
            public void mo3933a(float f, float f2, float f3) {
                PhotoView.this.aIL += f;
                if (!PhotoView.this.aII) {
                    if (Math.abs(PhotoView.this.aIL) >= PhotoView.this.aIp) {
                        PhotoView.this.aII = true;
                        PhotoView.this.aIL = 0.0f;
                        return;
                    }
                    return;
                }
                PhotoView.this.aIn += f;
                PhotoView.this.aIx.postRotate(f, f2, f3);
            }
        };
        this.aJb = new ScaleGestureDetector.OnScaleGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.2
            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
                    return false;
                }
                PhotoView.this.aIm *= scaleFactor;
                PhotoView.this.aIx.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                return true;
            }

            @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            }
        };
        this.aJc = new Runnable() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (PhotoView.this.aiQ != null) {
                    PhotoView.this.aiQ.onClick(PhotoView.this);
                }
            }
        };
        this.aJd = new GestureDetector.SimpleOnGestureListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.4
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                if (PhotoView.this.aIZ != null) {
                    PhotoView.this.aIZ.onLongClick(PhotoView.this);
                }
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                PhotoView.this.aIF = false;
                PhotoView.this.aIC = false;
                PhotoView.this.aII = false;
                PhotoView.this.removeCallbacks(PhotoView.this.aJc);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIC) {
                    return false;
                }
                if ((PhotoView.this.aIJ || PhotoView.this.aIK) && !PhotoView.this.aIU.aJh) {
                    float f3 = (((float) Math.round(PhotoView.this.aIi.left)) >= PhotoView.this.aIj.left || ((float) Math.round(PhotoView.this.aIi.right)) <= PhotoView.this.aIj.right) ? 0.0f : f;
                    float f4 = (((float) Math.round(PhotoView.this.aIi.top)) >= PhotoView.this.aIj.top || ((float) Math.round(PhotoView.this.aIi.bottom)) <= PhotoView.this.aIj.bottom) ? 0.0f : f2;
                    if (PhotoView.this.aII || PhotoView.this.aIn % 90.0f != 0.0f) {
                        float f5 = ((int) (PhotoView.this.aIn / 90.0f)) * 90;
                        float f6 = PhotoView.this.aIn % 90.0f;
                        if (f6 > 45.0f) {
                            f5 += 90.0f;
                        } else if (f6 < -45.0f) {
                            f5 -= 90.0f;
                        }
                        PhotoView.this.aIU.m3928M((int) PhotoView.this.aIn, (int) f5);
                        PhotoView.this.aIn = f5;
                    }
                    PhotoView.this.m3986a(PhotoView.this.aIi);
                    PhotoView.this.aIU.m3924i(f3, f4);
                    PhotoView.this.aIU.start();
                    return super.onFling(motionEvent, motionEvent2, f, f2);
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (PhotoView.this.aIU.aJh) {
                    PhotoView.this.aIU.stop();
                }
                if (!PhotoView.this.m3941u(f)) {
                    if (PhotoView.this.aIJ || PhotoView.this.aIC || PhotoView.this.aIF) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f < 0.0f && PhotoView.this.aIi.left - f > PhotoView.this.aIR.left) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.left - PhotoView.this.aIR.left, f);
                            }
                            if (f > 0.0f && PhotoView.this.aIi.right - f < PhotoView.this.aIR.right) {
                                f = PhotoView.this.m3959f(PhotoView.this.aIi.right - PhotoView.this.aIR.right, f);
                            }
                        }
                        PhotoView.this.aIM = (int) (PhotoView.this.aIM - f);
                        PhotoView.this.aIx.postTranslate(-f, 0.0f);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f3 = (f >= 0.0f || PhotoView.this.aIi.left - f <= PhotoView.this.aIj.left) ? f : PhotoView.this.aIi.left;
                    if (f3 > 0.0f && PhotoView.this.aIi.right - f3 < PhotoView.this.aIj.right) {
                        f3 = PhotoView.this.aIi.right - PhotoView.this.aIj.right;
                    }
                    PhotoView.this.aIx.postTranslate(-f3, 0.0f);
                    PhotoView.this.aIM = (int) (PhotoView.this.aIM - f3);
                }
                if (!PhotoView.this.m3939v(f2)) {
                    if (PhotoView.this.aIK || PhotoView.this.aIF || PhotoView.this.aIC) {
                        PhotoView.this.m3994LE();
                        if (!PhotoView.this.aIC) {
                            if (f2 < 0.0f && PhotoView.this.aIi.top - f2 > PhotoView.this.aIR.top) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.top - PhotoView.this.aIR.top, f2);
                            }
                            if (f2 > 0.0f && PhotoView.this.aIi.bottom - f2 < PhotoView.this.aIR.bottom) {
                                f2 = PhotoView.this.m3956g(PhotoView.this.aIi.bottom - PhotoView.this.aIR.bottom, f2);
                            }
                        }
                        PhotoView.this.aIx.postTranslate(0.0f, -f2);
                        PhotoView.this.aIN = (int) (PhotoView.this.aIN - f2);
                        PhotoView.this.aIF = true;
                    }
                } else {
                    float f4 = (f2 >= 0.0f || PhotoView.this.aIi.top - f2 <= PhotoView.this.aIj.top) ? f2 : PhotoView.this.aIi.top;
                    if (f4 > 0.0f && PhotoView.this.aIi.bottom - f4 < PhotoView.this.aIj.bottom) {
                        f4 = PhotoView.this.aIi.bottom - PhotoView.this.aIj.bottom;
                    }
                    PhotoView.this.aIx.postTranslate(0.0f, -f4);
                    PhotoView.this.aIN = (int) (PhotoView.this.aIN - f4);
                }
                PhotoView.this.m3996LC();
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                PhotoView.this.postDelayed(PhotoView.this.aJc, 250L);
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                float f;
                float f2;
                PhotoView.this.aIU.stop();
                float width = PhotoView.this.aIi.left + (PhotoView.this.aIi.width() / 2.0f);
                float height = PhotoView.this.aIi.top + (PhotoView.this.aIi.height() / 2.0f);
                PhotoView.this.aIS.set(width, height);
                PhotoView.this.aIT.set(width, height);
                PhotoView.this.aIM = 0;
                PhotoView.this.aIN = 0;
                if (PhotoView.this.aIH) {
                    f = PhotoView.this.aIm;
                    f2 = 1.0f;
                } else {
                    f = PhotoView.this.aIm;
                    f2 = PhotoView.this.aIr;
                    PhotoView.this.aIS.set(motionEvent.getX(), motionEvent.getY());
                }
                PhotoView.this.aIz.reset();
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIk.left, -PhotoView.this.aIk.top);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postTranslate(-PhotoView.this.aIO, -PhotoView.this.aIP);
                PhotoView.this.aIz.postRotate(PhotoView.this.aIn, PhotoView.this.aIT.x, PhotoView.this.aIT.y);
                PhotoView.this.aIz.postScale(f2, f2, PhotoView.this.aIS.x, PhotoView.this.aIS.y);
                PhotoView.this.aIz.postTranslate(PhotoView.this.aIM, PhotoView.this.aIN);
                PhotoView.this.aIz.mapRect(PhotoView.this.aIQ, PhotoView.this.aIk);
                PhotoView.this.m3986a(PhotoView.this.aIQ);
                PhotoView.this.aIH = !PhotoView.this.aIH;
                PhotoView.this.aIU.m3925h(f, f2);
                PhotoView.this.aIU.start();
                return false;
            }
        };
        init();
    }

    private void init() {
        super.setScaleType(ImageView.ScaleType.MATRIX);
        if (this.aIo == null) {
            this.aIo = ImageView.ScaleType.CENTER_INSIDE;
        }
        this.aIA = new apr(this.aJa);
        this.mDetector = new GestureDetector(getContext(), this.aJd);
        this.aIB = new ScaleGestureDetector(getContext(), this.aJb);
        float f = getResources().getDisplayMetrics().density;
        this.aIs = (int) (f * 30.0f);
        this.aIt = (int) (f * 30.0f);
        this.aIu = (int) (f * 140.0f);
        this.aIp = 35;
        this.aIq = 340;
        this.aIr = 2.5f;
    }

    public int getDefaultAnimaDuring() {
        return 340;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.aiQ = onClickListener;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        ImageView.ScaleType scaleType2 = this.aIo;
        this.aIo = scaleType;
        if (scaleType2 != scaleType) {
            m3993Lt();
        }
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.aIZ = onLongClickListener;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.aIU.setInterpolator(interpolator);
    }

    public int getAnimaDuring() {
        return this.aIq;
    }

    public void setAnimaDuring(int i) {
        this.aIq = i;
    }

    public void setMaxScale(float f) {
        this.aIr = f;
    }

    public float getMaxScale() {
        return this.aIr;
    }

    public void enable() {
        this.f2453ND = true;
    }

    public void setMaxAnimFromWaiteTime(int i) {
        this.aIv = i;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        Drawable drawable = null;
        try {
            drawable = getResources().getDrawable(i);
        } catch (Exception e) {
        }
        setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        if (drawable == null) {
            this.aID = false;
        } else if (m3964d(drawable)) {
            if (!this.aID) {
                this.aID = true;
            }
            m3993Lt();
        }
    }

    /* renamed from: d */
    private boolean m3964d(Drawable drawable) {
        return (drawable.getIntrinsicHeight() > 0 && drawable.getIntrinsicWidth() > 0) || (drawable.getMinimumWidth() > 0 && drawable.getMinimumHeight() > 0) || (drawable.getBounds().width() > 0 && drawable.getBounds().height() > 0);
    }

    /* renamed from: e */
    private static int m3961e(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = drawable.getMinimumWidth();
        }
        return intrinsicWidth <= 0 ? drawable.getBounds().width() : intrinsicWidth;
    }

    /* renamed from: f */
    private static int m3958f(Drawable drawable) {
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicHeight <= 0) {
            intrinsicHeight = drawable.getMinimumHeight();
        }
        return intrinsicHeight <= 0 ? drawable.getBounds().height() : intrinsicHeight;
    }

    /* renamed from: Lt */
    private void m3993Lt() {
        if (this.aID && this.aIE) {
            this.aIw.reset();
            this.aIx.reset();
            this.aIH = false;
            Drawable drawable = getDrawable();
            int width = getWidth();
            int height = getHeight();
            int m3961e = m3961e(drawable);
            int m3958f = m3958f(drawable);
            this.aIk.set(0.0f, 0.0f, m3961e, m3958f);
            int i = (width - m3961e) / 2;
            int i2 = (height - m3958f) / 2;
            float f = m3961e > width ? width / m3961e : 1.0f;
            float f2 = m3958f > height ? height / m3958f : 1.0f;
            if (f >= f2) {
                f = f2;
            }
            this.aIw.reset();
            this.aIw.postTranslate(i, i2);
            this.aIw.postScale(f, f, this.aIl.x, this.aIl.y);
            this.aIw.mapRect(this.aIk);
            this.aIO = this.aIk.width() / 2.0f;
            this.aIP = this.aIk.height() / 2.0f;
            this.aIS.set(this.aIl);
            this.aIT.set(this.aIS);
            m3996LC();
            switch (C29885.aJf[this.aIo.ordinal()]) {
                case 1:
                    m3992Lu();
                    break;
                case 2:
                    m3991Lv();
                    break;
                case 3:
                    m3990Lw();
                    break;
                case 4:
                    m3989Lx();
                    break;
                case 5:
                    m3988Ly();
                    break;
                case 6:
                    m3987Lz();
                    break;
                case 7:
                    m3998LA();
                    break;
            }
            this.isInit = true;
            if (this.aIW != null && System.currentTimeMillis() - this.aIX < this.aIv) {
                m3983a(this.aIW);
            }
            this.aIW = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$5 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C29885 {
        static final /* synthetic */ int[] aJf = new int[ImageView.ScaleType.values().length];

        static {
            try {
                aJf[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                aJf[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                aJf[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                aJf[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                aJf[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                aJf[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                aJf[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: Lu */
    private void m3992Lu() {
        if (this.aID && this.aIE) {
            Drawable drawable = getDrawable();
            int m3961e = m3961e(drawable);
            int m3958f = m3958f(drawable);
            if (m3961e > this.aIj.width() || m3958f > this.aIj.height()) {
                float width = m3961e / this.aIi.width();
                float height = m3958f / this.aIi.height();
                if (width <= height) {
                    width = height;
                }
                this.aIm = width;
                this.aIx.postScale(this.aIm, this.aIm, this.aIl.x, this.aIl.y);
                m3996LC();
                m3997LB();
            }
        }
    }

    /* renamed from: Lv */
    private void m3991Lv() {
        if (this.aIi.width() < this.aIj.width() || this.aIi.height() < this.aIj.height()) {
            float width = this.aIj.width() / this.aIi.width();
            float height = this.aIj.height() / this.aIi.height();
            if (width <= height) {
                width = height;
            }
            this.aIm = width;
            this.aIx.postScale(this.aIm, this.aIm, this.aIl.x, this.aIl.y);
            m3996LC();
            m3997LB();
        }
    }

    /* renamed from: Lw */
    private void m3990Lw() {
        if (this.aIi.width() > this.aIj.width() || this.aIi.height() > this.aIj.height()) {
            float width = this.aIj.width() / this.aIi.width();
            float height = this.aIj.height() / this.aIi.height();
            if (width >= height) {
                width = height;
            }
            this.aIm = width;
            this.aIx.postScale(this.aIm, this.aIm, this.aIl.x, this.aIl.y);
            m3996LC();
            m3997LB();
        }
    }

    /* renamed from: Lx */
    private void m3989Lx() {
        if (this.aIi.width() < this.aIj.width()) {
            this.aIm = this.aIj.width() / this.aIi.width();
            this.aIx.postScale(this.aIm, this.aIm, this.aIl.x, this.aIl.y);
            m3996LC();
            m3997LB();
        }
    }

    /* renamed from: Ly */
    private void m3988Ly() {
        m3989Lx();
        float f = -this.aIi.top;
        this.aIN = (int) (this.aIN + f);
        this.aIx.postTranslate(0.0f, f);
        m3996LC();
        m3997LB();
    }

    /* renamed from: Lz */
    private void m3987Lz() {
        m3989Lx();
        float f = this.aIj.bottom - this.aIi.bottom;
        this.aIN = (int) (this.aIN + f);
        this.aIx.postTranslate(0.0f, f);
        m3996LC();
        m3997LB();
    }

    /* renamed from: LA */
    private void m3998LA() {
        this.aIx.postScale(this.aIj.width() / this.aIi.width(), this.aIj.height() / this.aIi.height(), this.aIl.x, this.aIl.y);
        m3996LC();
        m3997LB();
    }

    /* renamed from: LB */
    private void m3997LB() {
        Drawable drawable = getDrawable();
        this.aIk.set(0.0f, 0.0f, m3961e(drawable), m3958f(drawable));
        this.aIw.set(this.aIy);
        this.aIw.mapRect(this.aIk);
        this.aIO = this.aIk.width() / 2.0f;
        this.aIP = this.aIk.height() / 2.0f;
        this.aIm = 1.0f;
        this.aIM = 0;
        this.aIN = 0;
        this.aIx.reset();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LC */
    public void m3996LC() {
        this.aIy.set(this.aIw);
        this.aIy.postConcat(this.aIx);
        setImageMatrix(this.aIy);
        this.aIx.mapRect(this.aIi, this.aIk);
        this.aIJ = this.aIi.width() > this.aIj.width();
        this.aIK = this.aIi.height() > this.aIj.height();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.aID) {
            super.onMeasure(i, i2);
            return;
        }
        Drawable drawable = getDrawable();
        int m3961e = m3961e(drawable);
        int m3958f = m3958f(drawable);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -2);
        }
        if (layoutParams.width == -1) {
            if (mode == 0) {
                size = m3961e;
            }
        } else if (mode != 1073741824) {
            if (mode != Integer.MIN_VALUE) {
                size = m3961e;
            } else if (m3961e <= size) {
                size = m3961e;
            }
        }
        if (layoutParams.height == -1) {
            if (mode2 == 0) {
                size2 = m3958f;
            }
        } else if (mode2 != 1073741824) {
            if (mode2 != Integer.MIN_VALUE) {
                size2 = m3958f;
            } else if (m3958f <= size2) {
                size2 = m3958f;
            }
        }
        if (this.aIG && m3961e / m3958f != size / size2) {
            float f = size2 / m3958f;
            float f2 = size / m3961e;
            if (f >= f2) {
                f = f2;
            }
            if (layoutParams.width != -1) {
                size = (int) (m3961e * f);
            }
            if (layoutParams.height != -1) {
                size2 = (int) (m3958f * f);
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        super.setAdjustViewBounds(z);
        this.aIG = z;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.aIj.set(0.0f, 0.0f, i, i2);
        this.aIl.set(i / 2, i2 / 2);
        if (!this.aIE) {
            this.aIE = true;
            m3993Lt();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.aIV != null) {
            canvas.clipRect(this.aIV);
            this.aIV = null;
        }
        super.draw(canvas);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f2453ND) {
            int actionMasked = motionEvent.getActionMasked();
            if (motionEvent.getPointerCount() >= 2) {
                this.aIC = true;
            }
            this.mDetector.onTouchEvent(motionEvent);
            this.aIA.onTouchEvent(motionEvent);
            this.aIB.onTouchEvent(motionEvent);
            if (actionMasked == 1 || actionMasked == 3) {
                m3995LD();
                return true;
            }
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* renamed from: LD */
    private void m3995LD() {
        if (!this.aIU.aJh) {
            if (this.aII || this.aIn % 90.0f != 0.0f) {
                float f = ((int) (this.aIn / 90.0f)) * 90;
                float f2 = this.aIn % 90.0f;
                if (f2 > 45.0f) {
                    f += 90.0f;
                } else if (f2 < -45.0f) {
                    f -= 90.0f;
                }
                this.aIU.m3928M((int) this.aIn, (int) f);
                this.aIn = f;
            }
            float f3 = this.aIm;
            if (this.aIm < 1.0f) {
                this.aIU.m3925h(this.aIm, 1.0f);
                f3 = 1.0f;
            } else if (this.aIm > this.aIr) {
                f3 = this.aIr;
                this.aIU.m3925h(this.aIm, this.aIr);
            }
            float width = this.aIi.left + (this.aIi.width() / 2.0f);
            float height = this.aIi.top + (this.aIi.height() / 2.0f);
            this.aIS.set(width, height);
            this.aIT.set(width, height);
            this.aIM = 0;
            this.aIN = 0;
            this.aIz.reset();
            this.aIz.postTranslate(-this.aIk.left, -this.aIk.top);
            this.aIz.postTranslate(width - this.aIO, height - this.aIP);
            this.aIz.postScale(f3, f3, width, height);
            this.aIz.postRotate(this.aIn, width, height);
            this.aIz.mapRect(this.aIQ, this.aIk);
            m3986a(this.aIQ);
            this.aIU.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3986a(RectF rectF) {
        int i;
        int i2 = 0;
        if (rectF.width() <= this.aIj.width()) {
            if (!m3968c(rectF)) {
                i = -((int) (((this.aIj.width() - rectF.width()) / 2.0f) - rectF.left));
            }
            i = 0;
        } else if (rectF.left > this.aIj.left) {
            i = (int) (rectF.left - this.aIj.left);
        } else {
            if (rectF.right < this.aIj.right) {
                i = (int) (rectF.right - this.aIj.right);
            }
            i = 0;
        }
        if (rectF.height() <= this.aIj.height()) {
            if (!m3975b(rectF)) {
                i2 = -((int) (((this.aIj.height() - rectF.height()) / 2.0f) - rectF.top));
            }
        } else if (rectF.top > this.aIj.top) {
            i2 = (int) (rectF.top - this.aIj.top);
        } else if (rectF.bottom < this.aIj.bottom) {
            i2 = (int) (rectF.bottom - this.aIj.bottom);
        }
        if (i != 0 || i2 != 0) {
            if (!this.aIU.aJj.isFinished()) {
                this.aIU.aJj.abortAnimation();
            }
            this.aIU.m3926c(this.aIM, this.aIN, -i, -i2);
        }
    }

    /* renamed from: b */
    private boolean m3975b(RectF rectF) {
        return Math.abs(((float) Math.round(rectF.top)) - ((this.aIj.height() - rectF.height()) / 2.0f)) < 1.0f;
    }

    /* renamed from: c */
    private boolean m3968c(RectF rectF) {
        return Math.abs(((float) Math.round(rectF.left)) - ((this.aIj.width() - rectF.width()) / 2.0f)) < 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public float m3959f(float f, float f2) {
        return (Math.abs(Math.abs(f) - this.aIu) / this.aIu) * f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public float m3956g(float f, float f2) {
        return (Math.abs(Math.abs(f) - this.aIu) / this.aIu) * f2;
    }

    /* renamed from: a */
    private void m3985a(RectF rectF, RectF rectF2, RectF rectF3) {
        float f = rectF.left > rectF2.left ? rectF.left : rectF2.left;
        float f2 = rectF.right < rectF2.right ? rectF.right : rectF2.right;
        if (f > f2) {
            rectF3.set(0.0f, 0.0f, 0.0f, 0.0f);
            return;
        }
        float f3 = rectF.top > rectF2.top ? rectF.top : rectF2.top;
        float f4 = rectF.bottom < rectF2.bottom ? rectF.bottom : rectF2.bottom;
        if (f3 > f4) {
            rectF3.set(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            rectF3.set(f, f3, f2, f4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LE */
    public void m3994LE() {
        if (!this.aIF) {
            m3985a(this.aIj, this.aIi, this.aIR);
        }
    }

    /* renamed from: u */
    public boolean m3941u(float f) {
        if (this.aIi.width() <= this.aIj.width()) {
            return false;
        }
        if (f >= 0.0f || Math.round(this.aIi.left) - f < this.aIj.left) {
            return f <= 0.0f || ((float) Math.round(this.aIi.right)) - f > this.aIj.right;
        }
        return false;
    }

    /* renamed from: v */
    public boolean m3939v(float f) {
        if (this.aIi.height() <= this.aIj.height()) {
            return false;
        }
        if (f >= 0.0f || Math.round(this.aIi.top) - f < this.aIj.top) {
            return f <= 0.0f || ((float) Math.round(this.aIi.bottom)) - f > this.aIj.bottom;
        }
        return false;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.aIC) {
            return true;
        }
        return m3941u(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        if (this.aIC) {
            return true;
        }
        return m3939v(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$c  reason: invalid class name */
    /* loaded from: classes.dex */
    public class animationInterpolatorC2991c implements Interpolator {
        private Interpolator aJg;

        private animationInterpolatorC2991c() {
            this.aJg = new DecelerateInterpolator();
        }

        /* renamed from: b */
        public void m3932b(Interpolator interpolator) {
            this.aJg = interpolator;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            if (this.aJg != null) {
                return this.aJg.getInterpolation(f);
            }
            return f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$f */
    /* loaded from: classes.dex */
    public class RunnableC2994f implements Runnable {
        boolean aJh;
        OverScroller aJi;
        OverScroller aJj;
        Scroller aJk;
        Scroller aJl;
        Scroller aJm;
        InterfaceC2989a aJn;
        int aJo;
        int aJp;
        animationInterpolatorC2991c aJq;
        RectF mClipRect = new RectF();
        int mLastFlingX;
        int mLastFlingY;

        RunnableC2994f() {
            this.aJq = new animationInterpolatorC2991c();
            Context context = PhotoView.this.getContext();
            this.aJi = new OverScroller(context, this.aJq);
            this.aJk = new Scroller(context, this.aJq);
            this.aJj = new OverScroller(context, this.aJq);
            this.aJl = new Scroller(context, this.aJq);
            this.aJm = new Scroller(context, this.aJq);
        }

        public void setInterpolator(Interpolator interpolator) {
            this.aJq.m3932b(interpolator);
        }

        /* renamed from: c */
        void m3926c(int i, int i2, int i3, int i4) {
            this.aJo = 0;
            this.aJp = 0;
            this.aJi.startScroll(0, 0, i3, i4, PhotoView.this.aIq);
        }

        /* renamed from: h */
        void m3925h(float f, float f2) {
            this.aJk.startScroll((int) (f * 10000.0f), 0, (int) ((f2 - f) * 10000.0f), 0, PhotoView.this.aIq);
        }

        /* renamed from: a */
        void m3927a(float f, float f2, float f3, float f4, int i, InterfaceC2989a interfaceC2989a) {
            this.aJl.startScroll((int) (f * 10000.0f), (int) (f2 * 10000.0f), (int) (f3 * 10000.0f), (int) (10000.0f * f4), i);
            this.aJn = interfaceC2989a;
        }

        /* renamed from: M */
        void m3928M(int i, int i2) {
            this.aJm.startScroll(i, 0, i2 - i, 0, PhotoView.this.aIq);
        }

        /* renamed from: i */
        void m3924i(float f, float f2) {
            this.mLastFlingX = f < 0.0f ? Integer.MAX_VALUE : 0;
            int abs = (int) (f > 0.0f ? Math.abs(PhotoView.this.aIi.left) : PhotoView.this.aIi.right - PhotoView.this.aIj.right);
            if (f < 0.0f) {
                abs = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - abs;
            }
            int i = f < 0.0f ? abs : 0;
            int i2 = f < 0.0f ? Integer.MAX_VALUE : abs;
            int i3 = f < 0.0f ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - i : abs;
            this.mLastFlingY = f2 < 0.0f ? Integer.MAX_VALUE : 0;
            int abs2 = (int) (f2 > 0.0f ? Math.abs(PhotoView.this.aIi.top) : PhotoView.this.aIi.bottom - PhotoView.this.aIj.bottom);
            if (f2 < 0.0f) {
                abs2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - abs2;
            }
            int i4 = f2 < 0.0f ? abs2 : 0;
            int i5 = f2 < 0.0f ? Integer.MAX_VALUE : abs2;
            int i6 = f2 < 0.0f ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - i4 : abs2;
            if (f == 0.0f) {
                i2 = 0;
                i = 0;
            }
            if (f2 == 0.0f) {
                i5 = 0;
                i4 = 0;
            }
            this.aJj.fling(this.mLastFlingX, this.mLastFlingY, (int) f, (int) f2, i, i2, i4, i5, Math.abs(i3) < PhotoView.this.aIt * 2 ? 0 : PhotoView.this.aIt, Math.abs(i6) >= PhotoView.this.aIt * 2 ? PhotoView.this.aIt : 0);
        }

        void start() {
            this.aJh = true;
            m3929LH();
        }

        void stop() {
            PhotoView.this.removeCallbacks(this);
            this.aJi.abortAnimation();
            this.aJk.abortAnimation();
            this.aJj.abortAnimation();
            this.aJm.abortAnimation();
            this.aJh = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            boolean z2 = true;
            boolean z3 = false;
            if (this.aJk.computeScrollOffset()) {
                PhotoView.this.aIm = this.aJk.getCurrX() / 10000.0f;
                z = false;
            } else {
                z = true;
            }
            if (this.aJi.computeScrollOffset()) {
                int currX = this.aJi.getCurrX() - this.aJo;
                int currY = this.aJi.getCurrY() - this.aJp;
                PhotoView.this.aIM = currX + PhotoView.this.aIM;
                PhotoView.this.aIN = currY + PhotoView.this.aIN;
                this.aJo = this.aJi.getCurrX();
                this.aJp = this.aJi.getCurrY();
                z = false;
            }
            if (this.aJj.computeScrollOffset()) {
                int currX2 = this.aJj.getCurrX() - this.mLastFlingX;
                int currY2 = this.aJj.getCurrY() - this.mLastFlingY;
                this.mLastFlingX = this.aJj.getCurrX();
                this.mLastFlingY = this.aJj.getCurrY();
                PhotoView.this.aIM = currX2 + PhotoView.this.aIM;
                PhotoView.this.aIN = currY2 + PhotoView.this.aIN;
                z = false;
            }
            if (this.aJm.computeScrollOffset()) {
                PhotoView.this.aIn = this.aJm.getCurrX();
                z = false;
            }
            if (this.aJl.computeScrollOffset() || PhotoView.this.aIV != null) {
                float currX3 = this.aJl.getCurrX() / 10000.0f;
                float currY3 = this.aJl.getCurrY() / 10000.0f;
                PhotoView.this.aIz.setScale(currX3, currY3, (PhotoView.this.aIi.left + PhotoView.this.aIi.right) / 2.0f, this.aJn.mo3931LF());
                PhotoView.this.aIz.mapRect(this.mClipRect, PhotoView.this.aIi);
                if (currX3 == 1.0f) {
                    this.mClipRect.left = PhotoView.this.aIj.left;
                    this.mClipRect.right = PhotoView.this.aIj.right;
                }
                if (currY3 == 1.0f) {
                    this.mClipRect.top = PhotoView.this.aIj.top;
                    this.mClipRect.bottom = PhotoView.this.aIj.bottom;
                }
                PhotoView.this.aIV = this.mClipRect;
            }
            if (!z) {
                m3930LG();
                m3929LH();
                return;
            }
            this.aJh = false;
            if (PhotoView.this.aIJ) {
                if (PhotoView.this.aIi.left <= 0.0f) {
                    if (PhotoView.this.aIi.right < PhotoView.this.aIj.width()) {
                        PhotoView.this.aIM -= (int) (PhotoView.this.aIj.width() - PhotoView.this.aIi.right);
                    }
                } else {
                    PhotoView.this.aIM = (int) (PhotoView.this.aIM - PhotoView.this.aIi.left);
                }
                z3 = true;
            }
            if (!PhotoView.this.aIK) {
                z2 = z3;
            } else if (PhotoView.this.aIi.top <= 0.0f) {
                if (PhotoView.this.aIi.bottom < PhotoView.this.aIj.height()) {
                    PhotoView.this.aIN -= (int) (PhotoView.this.aIj.height() - PhotoView.this.aIi.bottom);
                }
            } else {
                PhotoView.this.aIN = (int) (PhotoView.this.aIN - PhotoView.this.aIi.top);
            }
            if (z2) {
                m3930LG();
            }
            PhotoView.this.invalidate();
            if (PhotoView.this.aIY != null) {
                PhotoView.this.aIY.run();
                PhotoView.this.aIY = null;
            }
        }

        /* renamed from: LG */
        private void m3930LG() {
            PhotoView.this.aIx.reset();
            PhotoView.this.aIx.postTranslate(-PhotoView.this.aIk.left, -PhotoView.this.aIk.top);
            PhotoView.this.aIx.postTranslate(PhotoView.this.aIT.x, PhotoView.this.aIT.y);
            PhotoView.this.aIx.postTranslate(-PhotoView.this.aIO, -PhotoView.this.aIP);
            PhotoView.this.aIx.postRotate(PhotoView.this.aIn, PhotoView.this.aIT.x, PhotoView.this.aIT.y);
            PhotoView.this.aIx.postScale(PhotoView.this.aIm, PhotoView.this.aIm, PhotoView.this.aIS.x, PhotoView.this.aIS.y);
            PhotoView.this.aIx.postTranslate(PhotoView.this.aIM, PhotoView.this.aIN);
            PhotoView.this.m3996LC();
        }

        /* renamed from: LH */
        private void m3929LH() {
            if (this.aJh) {
                PhotoView.this.post(this);
            }
        }
    }

    public C1432app getInfo() {
        RectF rectF = new RectF();
        int[] iArr = new int[2];
        m3984a(this, iArr);
        rectF.set(iArr[0] + this.aIi.left, iArr[1] + this.aIi.top, iArr[0] + this.aIi.right, iArr[1] + this.aIi.bottom);
        return new C1432app(rectF, this.aIi, this.aIj, this.aIk, this.aIl, this.aIm, this.aIn, this.aIo);
    }

    /* renamed from: a */
    private static void m3984a(View view, int[] iArr) {
        iArr[0] = iArr[0] + view.getLeft();
        iArr[1] = iArr[1] + view.getTop();
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (view2.getId() != 16908290) {
                iArr[0] = iArr[0] - view2.getScrollX();
                iArr[1] = iArr[1] - view2.getScrollY();
                iArr[0] = iArr[0] + view2.getLeft();
                iArr[1] = iArr[1] + view2.getTop();
                parent = view2.getParent();
            } else {
                return;
            }
        }
        iArr[0] = (int) (iArr[0] + 0.5f);
        iArr[1] = (int) (iArr[1] + 0.5f);
    }

    public void reset() {
        this.aIx.reset();
        m3996LC();
        this.aIm = 1.0f;
        this.aIM = 0;
        this.aIN = 0;
    }

    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$e */
    /* loaded from: classes.dex */
    public class C2993e implements InterfaceC2989a {
        public C2993e() {
        }

        @Override // com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.InterfaceC2989a
        /* renamed from: LF */
        public float mo3931LF() {
            return PhotoView.this.aIi.top;
        }
    }

    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$b */
    /* loaded from: classes.dex */
    public class C2990b implements InterfaceC2989a {
        public C2990b() {
        }

        @Override // com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.InterfaceC2989a
        /* renamed from: LF */
        public float mo3931LF() {
            return PhotoView.this.aIi.bottom;
        }
    }

    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView$d */
    /* loaded from: classes.dex */
    public class C2992d implements InterfaceC2989a {
        public C2992d() {
        }

        @Override // com.kingroot.kinguser.distribution.thumbnails.style.view.photoview.PhotoView.InterfaceC2989a
        /* renamed from: LF */
        public float mo3931LF() {
            return (PhotoView.this.aIi.top + PhotoView.this.aIi.bottom) / 2.0f;
        }
    }

    /* renamed from: a */
    public void m3983a(C1432app c1432app) {
        InterfaceC2989a c2990b;
        if (this.isInit) {
            reset();
            C1432app info = getInfo();
            float width = c1432app.aIi.width() / info.aIi.width();
            float height = c1432app.aIi.height() / info.aIi.height();
            if (width >= height) {
                width = height;
            }
            float width2 = c1432app.aIh.left + (c1432app.aIh.width() / 2.0f);
            float height2 = c1432app.aIh.top + (c1432app.aIh.height() / 2.0f);
            this.aIx.reset();
            this.aIx.postTranslate(-this.aIk.left, -this.aIk.top);
            this.aIx.postTranslate(width2 - (this.aIk.width() / 2.0f), height2 - (this.aIk.height() / 2.0f));
            this.aIx.postScale(width, width, width2, height2);
            this.aIx.postRotate(c1432app.aIn, width2, height2);
            m3996LC();
            this.aIS.set(width2, height2);
            this.aIT.set(width2, height2);
            this.aIU.m3926c(0, 0, (int) (this.aIl.x - width2), (int) (this.aIl.y - height2));
            this.aIU.m3925h(width, 1.0f);
            this.aIU.m3928M((int) c1432app.aIn, 0);
            if (c1432app.aIj.width() < c1432app.aIi.width() || c1432app.aIj.height() < c1432app.aIi.height()) {
                float width3 = c1432app.aIj.width() / c1432app.aIi.width();
                float height3 = c1432app.aIj.height() / c1432app.aIi.height();
                if (width3 > 1.0f) {
                    width3 = 1.0f;
                }
                if (height3 > 1.0f) {
                    height3 = 1.0f;
                }
                if (c1432app.aIo == ImageView.ScaleType.FIT_START) {
                    c2990b = new C2993e();
                } else {
                    c2990b = c1432app.aIo == ImageView.ScaleType.FIT_END ? new C2990b() : new C2992d();
                }
                this.aIU.m3927a(width3, height3, 1.0f - width3, 1.0f - height3, this.aIq / 3, c2990b);
                this.aIz.setScale(width3, height3, (this.aIi.left + this.aIi.right) / 2.0f, c2990b.mo3931LF());
                this.aIz.mapRect(this.aIU.mClipRect, this.aIi);
                this.aIV = this.aIU.mClipRect;
            }
            this.aIU.start();
            return;
        }
        this.aIW = c1432app;
        this.aIX = System.currentTimeMillis();
    }
}
