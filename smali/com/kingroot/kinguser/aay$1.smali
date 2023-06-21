.class final Lcom/kingroot/kinguser/aay$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aay;->qx()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "000000000000000"

    .line 136
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/kingroot/kinguser/aay;->ac(Z)Ljava/util/List;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dY(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dY(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
