.class public abstract Lcom/kingroot/kinguser/bkw;
.super Lcom/kingroot/kinguser/ri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bkw$a;
    }
.end annotation


# instance fields
.field private bzq:Lcom/kingroot/kinguser/bkw$a;

.field private bzr:Lcom/kingroot/kinguser/vo;

.field private bzs:Lcom/kingroot/kinguser/zv;

.field private bzt:Lcom/kingroot/kinguser/bkx;

.field private bzu:Lcom/kingroot/kinguser/bla;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/ri;-><init>()V

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/adz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/adz;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzr:Lcom/kingroot/kinguser/vo;

    .line 43
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkw;->aeR()V

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bkx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bkx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzt:Lcom/kingroot/kinguser/bkx;

    .line 45
    new-instance v0, Lcom/kingroot/kinguser/bla;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bla;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzu:Lcom/kingroot/kinguser/bla;

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bkw$1;

    invoke-direct {v0, p0, p0}, Lcom/kingroot/kinguser/bkw$1;-><init>(Lcom/kingroot/kinguser/bkw;Lcom/kingroot/kinguser/bkw;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzq:Lcom/kingroot/kinguser/bkw$a;

    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkw;->aeQ()V

    .line 58
    return-void
.end method

.method private aeQ()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bkw;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/receiver/MediaMountedReceiver;

    invoke-direct {v2}, Lcom/kingroot/kinguser/receiver/MediaMountedReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected aeR()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/kingroot/kinguser/zv$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/zv$a;-><init>()V

    .line 72
    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zv$a;->aa(J)Lcom/kingroot/kinguser/zv$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/kingroot/kinguser/zv$a;->pH()Lcom/kingroot/kinguser/zv;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzs:Lcom/kingroot/kinguser/zv;

    .line 74
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzq:Lcom/kingroot/kinguser/bkw$a;

    return-object v0
.end method

.method public hV()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzt:Lcom/kingroot/kinguser/bkx;

    return-object v0
.end method

.method public hW()Lcom/kingroot/kinguser/cbw;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/acl;->rI()Lcom/kingroot/kinguser/acl;

    move-result-object v0

    return-object v0
.end method

.method public hX()Lcom/kingroot/kinguser/zf;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public if()Lcom/kingroot/kinguser/vo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzr:Lcom/kingroot/kinguser/vo;

    return-object v0
.end method

.method public ig()Lcom/kingroot/kinguser/zv;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzs:Lcom/kingroot/kinguser/zv;

    return-object v0
.end method

.method public ir()Lcom/kingroot/kinguser/abs;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/bkw;->bzu:Lcom/kingroot/kinguser/bla;

    return-object v0
.end method
