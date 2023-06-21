.class Lcom/kingroot/kinguser/aiv$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aiv$5;->a(Lcom/kingroot/kinguser/bed$a;)V
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
.field final synthetic aii:I

.field final synthetic asB:Lcom/kingroot/kinguser/aiv$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aiv$5;I)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/kingroot/kinguser/aiv$5$1;->asB:Lcom/kingroot/kinguser/aiv$5;

    iput p2, p0, Lcom/kingroot/kinguser/aiv$5$1;->aii:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 870
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv$5$1;->asB:Lcom/kingroot/kinguser/aiv$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/aiv$5;->asy:Lcom/kingroot/kinguser/aiv;

    iget v1, p0, Lcom/kingroot/kinguser/aiv$5$1;->aii:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiv;->dF(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/kingroot/kinguser/aiv$5$1;->asB:Lcom/kingroot/kinguser/aiv$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/aiv$5;->asy:Lcom/kingroot/kinguser/aiv;

    iget v1, p0, Lcom/kingroot/kinguser/aiv$5$1;->aii:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aiv;->a(Lcom/kingroot/kinguser/aiv;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 873
    :catch_0
    move-exception v0

    goto :goto_0
.end method
