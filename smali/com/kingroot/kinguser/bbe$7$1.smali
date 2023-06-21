.class Lcom/kingroot/kinguser/bbe$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbe$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic beN:Lcom/kingroot/kinguser/bbe$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe$7;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$7$1;->beN:Lcom/kingroot/kinguser/bbe$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 573
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 574
    if-eqz v0, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 576
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/adm;->cx(I)V

    .line 578
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aP(J)V

    .line 580
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
