.class Lcom/kingroot/kinguser/cae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/gw$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/gw$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bWk:Lcom/kingroot/kinguser/cad;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cad;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/cae;->bWk:Lcom/kingroot/kinguser/cad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
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
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/cae;->bWk:Lcom/kingroot/kinguser/cad;

    invoke-static {v0}, Lcom/kingroot/kinguser/cad;->a(Lcom/kingroot/kinguser/cad;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
