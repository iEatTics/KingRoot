.class public final Lcom/kingx/cloudsdk/z;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private dI:Ljava/lang/String;

.field public dJ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/z;->dI:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingx/cloudsdk/z;->dJ:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-virtual {p1, v2, v2}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/z;->dI:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/kingx/cloudsdk/z;->dJ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/z;->dJ:I

    .line 33
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingx/cloudsdk/z;->dI:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingx/cloudsdk/z;->dI:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/kingx/cloudsdk/z;->dJ:I

    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingx/cloudsdk/z;->dJ:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 27
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
