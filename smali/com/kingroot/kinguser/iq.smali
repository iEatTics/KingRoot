.class Lcom/kingroot/kinguser/iq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ic$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/ic$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic sm:Lcom/kingroot/kinguser/ip;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ip;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/iq;->sm:Lcom/kingroot/kinguser/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Ljava/util/List;)Ljava/lang/Object;
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
    iget-object v0, p0, Lcom/kingroot/kinguser/iq;->sm:Lcom/kingroot/kinguser/ip;

    invoke-static {v0}, Lcom/kingroot/kinguser/ip;->a(Lcom/kingroot/kinguser/ip;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method
