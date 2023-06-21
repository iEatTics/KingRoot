.class public Lcom/kingroot/kinguser/blb;
.super Lcom/kingroot/kinguser/bkw;
.source "SourceFile"


# instance fields
.field bzA:Lcom/kingroot/kinguser/blc;

.field private bzB:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkw;-><init>()V

    .line 229
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/blb$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/blb$1;-><init>(Lcom/kingroot/kinguser/blb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blb;->bzB:Lcom/kingroot/kinguser/bed;

    .line 74
    new-instance v0, Lcom/kingroot/kinguser/blc;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/blc;-><init>(Lcom/kingroot/kinguser/blb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/blb;->bzA:Lcom/kingroot/kinguser/blc;

    .line 75
    return-void
.end method

.method private aeZ()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/blb;->bzB:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 224
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->afa()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/kingroot/kinguser/blb;->aeZ()V

    goto :goto_0

    .line 201
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 202
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aeT()V

    goto :goto_0
.end method

.method afa()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/blh;->afk()V

    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/tg;->jC()V

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pw()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/kingroot/kinguser/zm$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/busybox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-direct {v1, v2, v3, v4}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;II)V

    .line 261
    new-instance v2, Lcom/kingroot/kinguser/zm$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/tools"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f060006

    invoke-direct {v2, v0, v3, v4}, Lcom/kingroot/kinguser/zm$a;-><init>(Ljava/lang/String;II)V

    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kingroot/kinguser/zm$d;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/kingroot/kinguser/zm;->a([Lcom/kingroot/kinguser/zm$d;)V

    .line 263
    return-void
.end method

.method public iv()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/blb;->bzA:Lcom/kingroot/kinguser/blc;

    return-object v0
.end method

.method public iw()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public iy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/kingroot/kinguser/bkw;->iy()V

    .line 81
    return-void
.end method

.method public onCreate()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const-wide/16 v6, 0x10

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wa;->initCrashReport(Landroid/content/Context;Z)V

    .line 90
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->W(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->startANRMonitor(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 102
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 104
    :cond_0
    invoke-static {v6, v7}, Lcom/android/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/aer;->d(Landroid/content/Context;I)Z

    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/auy;->Ra()Lcom/kingroot/kinguser/auy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/auy;->bb(Landroid/content/Context;)V

    .line 121
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zl;->pu()V

    .line 124
    invoke-static {}, Lcom/kingroot/kinguser/aiw;->yE()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xA()V

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->init()V

    .line 139
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 142
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/aon;->Kg()Lcom/kingroot/kinguser/aon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aon;->Kh()V

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/air;->yc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aeb()Lcom/kingroot/kinguser/bjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjn;->aed()V

    .line 153
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/common/utils/system/ProcessUtils;->cd(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bas;->bg(Landroid/content/Context;)Z

    .line 159
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/yh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/yh;-><init>()V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/xy;->a(Lcom/kingroot/kinguser/yf;)V

    .line 164
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->aY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/ayg;->h(Landroid/content/Context;Z)V

    .line 169
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/afu;->vB()Lcom/kingroot/kinguser/afu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/kingroot/kinguser/afu;->a(ZLcom/kingroot/kinguser/afu$a;)V

    .line 171
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v4}, Lcom/kingroot/kinguser/aea;->e(JI)V

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FR()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HC()V

    .line 178
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/alu;->Ho()Lcom/kingroot/kinguser/alu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alu;->Hm()V

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/alr;->Hd()Lcom/kingroot/kinguser/alr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alr;->Hf()V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amt;->Hm()V

    .line 183
    :cond_5
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method
