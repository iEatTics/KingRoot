.class Lcom/kingroot/kinguser/apx$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apx;->LZ()Lcom/kingroot/kinguser/aqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aKi:Lcom/kingroot/kinguser/apx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apx;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/kingroot/kinguser/apx$3;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)I
    .locals 5

    .prologue
    .line 432
    iget v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    int-to-long v0, v0

    .line 433
    iget v2, p2, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showPriority:I

    int-to-long v2, v2

    .line 434
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 435
    const/4 v0, -0x1

    .line 440
    :goto_0
    return v0

    .line 437
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 438
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 429
    check-cast p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    check-cast p2, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/apx$3;->a(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)I

    move-result v0

    return v0
.end method
