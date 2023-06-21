.class final Lcom/kingroot/common/improve/account/KSyncService$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/improve/account/KSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/uk;->kB()Ljava/lang/Runnable;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_0
    return-void
.end method
