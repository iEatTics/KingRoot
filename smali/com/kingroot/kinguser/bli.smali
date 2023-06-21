.class public Lcom/kingroot/kinguser/bli;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static afl()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    const-class v0, Lcom/kingroot/kinguser/blk;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->b(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 72
    const-class v0, Lcom/kingroot/kinguser/blj;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->b(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 75
    const-class v0, Lcom/kingroot/kinguser/bbh;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED"

    aput-object v2, v1, v4

    const-string v2, "com.kingroot.common.ACTION_NEW_APP_STARTED"

    aput-object v2, v1, v5

    const-string v2, "com.kingroot.common.ACTION_TOP_APP_CHANGED"

    aput-object v2, v1, v6

    const-string v2, "com.kingroot.common.ACTION_SWITCH_IN_DESKTOP"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->b(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 83
    const-class v0, Lcom/kingroot/kinguser/baz;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v1, v5

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->b(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 89
    const-class v0, Lcom/kingroot/kinguser/we;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.kingroot.common.share.ACTION_SHARE"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->b(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static afm()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    const-class v0, Lcom/kingroot/kinguser/aes;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v3

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 106
    const-class v0, Lcom/kingroot/kinguser/afj;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 109
    const-class v0, Lcom/kingroot/kinguser/tw;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.kingroot.master.action.NOTIFY_STATISTIC"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 112
    const-class v0, Lcom/kingroot/kinguser/bay;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 114
    const-class v0, Lcom/kingroot/kinguser/bax;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    aput-object v2, v1, v3

    const-string v2, "android.hardware.usb.action.USB_STATE"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 116
    const-class v0, Lcom/kingroot/kinguser/bba;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 120
    const-class v0, Lcom/kingroot/kinguser/att;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v1, v3

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    aput-object v2, v1, v4

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 124
    const-class v0, Lcom/kingroot/kinguser/bbe;

    new-array v1, v6, [Ljava/lang/String;

    sget-object v2, Lcom/kingroot/kinguser/bbe;->beB:Ljava/lang/String;

    aput-object v2, v1, v3

    sget-object v2, Lcom/kingroot/kinguser/bbe;->beC:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/kingroot/kinguser/bbe;->beD:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 128
    const-class v0, Lcom/kingroot/kinguser/bbc;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.kingroot.kinguser.ACTION_MAIN_START_CHECK"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 131
    const-class v0, Lcom/kingroot/kinguser/bbb;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "com.kingroot.master.action.NAIN_EXIT_NOTIFY"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 135
    const-class v0, Lcom/kingroot/kinguser/bbg;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED"

    aput-object v2, v1, v3

    const-string v2, "com.kingroot.common.ACTION_NEW_APP_STARTED"

    aput-object v2, v1, v4

    const-string v2, "com.kingroot.common.ACTION_SWITCH_IN_DESKTOP"

    aput-object v2, v1, v5

    const-string v2, "com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "com.kingroot.common.ACTION_TOP_APP_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.kingroot.common.ACTION_NOTIFY_OUT_SELF_APP_BY_MAIN"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bli;->c(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private static varargs b(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/tf;->a(ILjava/lang/Class;[Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private static varargs c(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/tf;->a(ILjava/lang/Class;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/bli;->afl()V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/bli;->afm()V

    .line 41
    return-void
.end method
