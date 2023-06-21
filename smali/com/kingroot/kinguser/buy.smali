.class public Lcom/kingroot/kinguser/buy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bOW:Lcom/kingroot/kinguser/bup;

.field public bOX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bvq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bvq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/kingroot/kinguser/buy;->bOX:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bup;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/buy;->bOW:Lcom/kingroot/kinguser/bup;

    .line 30
    return-void
.end method

.method public air()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bvq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/buy;->bOX:Ljava/util/ArrayList;

    return-object v0
.end method
