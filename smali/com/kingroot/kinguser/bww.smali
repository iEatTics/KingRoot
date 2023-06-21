.class public Lcom/kingroot/kinguser/bww;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bSN:I

.field public bSO:I

.field public bSP:I

.field public bSQ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSN:I

    .line 35
    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSO:I

    .line 38
    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSP:I

    .line 41
    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSQ:I

    return-void
.end method

.method private ajd()V
    .locals 2

    .prologue
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const-string v0, "/sys/class/android_usb/android0/state"

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/byy;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSP:I

    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSP:I

    goto :goto_0

    .line 96
    :cond_3
    const-string v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSP:I

    goto :goto_0
.end method

.method private bX(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 57
    if-nez v3, :cond_0

    .line 78
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "status"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    if-eq v0, v5, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_2

    :cond_1
    move v0, v2

    .line 64
    :goto_1
    if-nez v0, :cond_3

    .line 65
    iput v2, p0, Lcom/kingroot/kinguser/bww;->bSQ:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 62
    goto :goto_1

    .line 70
    :cond_3
    const-string v0, "plugged"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 71
    if-ne v0, v5, :cond_4

    .line 72
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSQ:I

    goto :goto_0

    .line 73
    :cond_4
    if-ne v0, v2, :cond_5

    .line 74
    iput v5, p0, Lcom/kingroot/kinguser/bww;->bSQ:I

    goto :goto_0

    .line 76
    :cond_5
    iput v1, p0, Lcom/kingroot/kinguser/bww;->bSQ:I

    goto :goto_0
.end method

.method private bY(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 103
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bww;->bZ(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSN:I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Lcom/kingroot/kinguser/bww;->bSN:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private bZ(Landroid/content/Context;)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    const-string v0, "android.hardware.display.DisplayManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "DISPLAY_SERVICE"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 126
    :cond_0
    const-string v4, "getDisplays"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 127
    if-nez v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 129
    invoke-virtual {v3, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display;

    check-cast v0, [Landroid/view/Display;

    .line 131
    const-class v3, Landroid/view/Display;

    const-string v4, "getState"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 134
    const-class v3, Landroid/view/Display;

    const-string v4, "STATE_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 135
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    array-length v7, v0

    move v4, v1

    move v3, v1

    :goto_1
    if-ge v4, v7, :cond_2

    aget-object v1, v0, v4

    .line 139
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 141
    invoke-virtual {v5, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    if-eq v1, v8, :cond_4

    move v1, v2

    .line 138
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 147
    :cond_2
    if-eqz v3, :cond_3

    :goto_3
    iput v2, p0, Lcom/kingroot/kinguser/bww;->bSN:I

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/bww;->bSN:I

    goto :goto_0

    .line 147
    :cond_3
    const/4 v2, 0x2

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public bW(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bww;->bY(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/bww;->ajd()V

    .line 46
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bww;->bX(Landroid/content/Context;)V

    .line 47
    return-void
.end method
