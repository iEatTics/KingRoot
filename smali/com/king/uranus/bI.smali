.class public Lcom/king/uranus/bI;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static uj:Lcom/king/uranus/bI;


# instance fields
.field private fX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/lo;",
            ">;"
        }
    .end annotation
.end field

.field private uk:Z

.field private ul:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/king/uranus/bI;

    invoke-direct {v0}, Lcom/king/uranus/bI;-><init>()V

    sput-object v0, Lcom/king/uranus/bI;->uj:Lcom/king/uranus/bI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/king/uranus/bI;->fX:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/king/uranus/bI;->uk:Z

    return-void
.end method

.method public static synthetic a(Lcom/king/uranus/bI;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/king/uranus/bI;->fX:Ljava/util/Set;

    return-object v0
.end method

.method public static dg()Lcom/king/uranus/bI;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/king/uranus/bI;->uj:Lcom/king/uranus/bI;

    return-object v0
.end method

.method private dh()Z
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/king/uranus/bI;->ul:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/lo;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/king/uranus/bI;->fX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/king/uranus/bI;->dh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/uranus/bI;->ul:J

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/kr;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/kr;-><init>(Lcom/king/uranus/bI;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;)V

    goto :goto_0
.end method

.method public u(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/king/uranus/bI;->uk:Z

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/king/uranus/bI;->ul:J

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/uranus/bI;->uk:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
