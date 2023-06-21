.class public final Lcom/kingx/cloudsdk/w;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static bDq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private dr:I

.field private ds:I

.field private dt:I

.field private du:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private dv:I

.field private dw:Z

.field private dx:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 71
    iput v1, p0, Lcom/kingx/cloudsdk/w;->dr:I

    .line 72
    iput v1, p0, Lcom/kingx/cloudsdk/w;->ds:I

    .line 73
    iput v1, p0, Lcom/kingx/cloudsdk/w;->dt:I

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingx/cloudsdk/w;->du:Ljava/util/ArrayList;

    .line 75
    iput v1, p0, Lcom/kingx/cloudsdk/w;->dv:I

    .line 76
    iput-boolean v1, p0, Lcom/kingx/cloudsdk/w;->dw:Z

    .line 77
    iput v1, p0, Lcom/kingx/cloudsdk/w;->dx:I

    .line 80
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingx/cloudsdk/w;->du:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public final O(I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dv:I

    .line 53
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dr:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dr:I

    .line 104
    iget v0, p0, Lcom/kingx/cloudsdk/w;->ds:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->ds:I

    .line 105
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dt:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dt:I

    .line 106
    sget-object v0, Lcom/kingx/cloudsdk/w;->bDq:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/w;->bDq:Ljava/util/ArrayList;

    .line 108
    new-array v0, v3, [B

    check-cast v0, [B

    move-object v1, v0

    .line 109
    check-cast v1, [B

    aput-byte v2, v1, v2

    .line 111
    sget-object v1, Lcom/kingx/cloudsdk/w;->bDq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/w;->bDq:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/w;->du:Ljava/util/ArrayList;

    .line 114
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dv:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dv:I

    .line 115
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/w;->dw:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/w;->dw:Z

    .line 116
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dx:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dx:I

    .line 117
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 87
    iget v0, p0, Lcom/kingx/cloudsdk/w;->ds:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 88
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dt:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 89
    iget-object v0, p0, Lcom/kingx/cloudsdk/w;->du:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 90
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dv:I

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dv:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/w;->dw:Z

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/w;->dw:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 96
    :cond_1
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dx:I

    if-eqz v0, :cond_2

    .line 97
    iget v0, p0, Lcom/kingx/cloudsdk/w;->dx:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 99
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dr:I

    .line 21
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/w;->ds:I

    .line 29
    return-void
.end method

.method public final jW(I)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingx/cloudsdk/w;->dt:I

    .line 37
    return-void
.end method
