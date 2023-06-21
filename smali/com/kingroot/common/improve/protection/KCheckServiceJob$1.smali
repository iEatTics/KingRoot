.class final Lcom/kingroot/common/improve/protection/KCheckServiceJob$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/improve/protection/KCheckServiceJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/ul;->kB()Ljava/lang/Runnable;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    :cond_0
    return-void
.end method
