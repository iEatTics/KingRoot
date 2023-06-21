.class public Lcom/kingroot/kinguser/atz;
.super Lcom/kingroot/kinguser/aua;
.source "SourceFile"


# instance fields
.field private aQO:I

.field private aQP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aua;-><init>(Ljava/lang/String;I)V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/atz;->aQP:Ljava/util/Set;

    .line 13
    return-void
.end method


# virtual methods
.method public PF()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/kingroot/kinguser/atz;->aQO:I

    return v0
.end method

.method public gF(I)V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/atz;->aQO:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/atz;->aQO:I

    .line 25
    return-void
.end method

.method public jj(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/atz;->aQP:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
