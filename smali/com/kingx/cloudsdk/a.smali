.class public final Lcom/kingx/cloudsdk/a;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private aa:I

.field private ab:I

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 19
    iput v0, p0, Lcom/kingx/cloudsdk/a;->id:I

    .line 20
    iput v0, p0, Lcom/kingx/cloudsdk/a;->aa:I

    .line 21
    iput v0, p0, Lcom/kingx/cloudsdk/a;->ab:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    iget v0, p0, Lcom/kingx/cloudsdk/a;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/a;->id:I

    .line 95
    iget v0, p0, Lcom/kingx/cloudsdk/a;->aa:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/a;->aa:I

    .line 96
    iget v0, p0, Lcom/kingx/cloudsdk/a;->ab:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/a;->ab:I

    .line 97
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/kingx/cloudsdk/a;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 89
    iget v0, p0, Lcom/kingx/cloudsdk/a;->aa:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 90
    iget v0, p0, Lcom/kingx/cloudsdk/a;->ab:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 91
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    check-cast p1, Lcom/kingx/cloudsdk/a;

    .line 61
    iget v1, p0, Lcom/kingx/cloudsdk/a;->id:I

    iget v2, p1, Lcom/kingx/cloudsdk/a;->id:I

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bne;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingx/cloudsdk/a;->aa:I

    iget v2, p1, Lcom/kingx/cloudsdk/a;->aa:I

    .line 62
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bne;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingx/cloudsdk/a;->ab:I

    iget v2, p1, Lcom/kingx/cloudsdk/a;->ab:I

    .line 63
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bne;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v0, 0x0

    return v0
.end method
