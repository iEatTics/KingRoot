.class Lcom/kingroot/kinguser/ayj$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ayj;->getGuidAsyn(Lcom/kingroot/kinguser/ccg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcP:Lcom/kingroot/kinguser/ayj;

.field final synthetic bcQ:Lcom/kingroot/kinguser/ccg;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayj;Lcom/kingroot/kinguser/ccg;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/ayj$2;->bcP:Lcom/kingroot/kinguser/ayj;

    iput-object p2, p0, Lcom/kingroot/kinguser/ayj$2;->bcQ:Lcom/kingroot/kinguser/ccg;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/ayj$2;->bcQ:Lcom/kingroot/kinguser/ccg;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/ayj$2;->bcQ:Lcom/kingroot/kinguser/ccg;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/ayj$2;->bcP:Lcom/kingroot/kinguser/ayj;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ayj;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ccg;->T(ILjava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method
